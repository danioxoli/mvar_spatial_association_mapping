# -*- coding: utf-8 -*-
"""
#
# Project:  Multivariate LISA
#
# Purposes: a) Multivariate Local Geary's c (Anselin, 2019)*
#           b) Multivariate spatial clusters and outliers classification Mm_i (Oxoli, 2020)
#
# Improvements (Chen 2024** logic applied to multivariate):
#   - Option to use GLOBAL (sum-)normalized symmetric weights (Chen-style canonical LISA consistency)
#   - Canonical scaling with factor 1/(2k)
#   - Two multivariate distances:
#       (i) Euclidean in standardized space
#       (ii) Mahalanobis in standardized space (covariance-aware)
#
# target data: Vector layer (GeoDataframe)
#
# Author:   Daniele Oxoli (daniele.oxoli@polimi.it)
# Ref: Oxoli, D., Sabri, S., Rajabifard, A., & Brovelli, M. A. (2020). A classification technique for local multivariate clusters and outliers of spatial association. Transactions in GIS, 24(5), 1227-1247.
# * Original Ref: Anselin, L. (2019). A local indicator of multivariate spatial association: extending Geary's C. Geographical Analysis, 51(2), 133-150.
# ** Contrast Ref: Chen, Y. (2024). Reconstruction and normalization of LISA for spatial analysis. Plos one, 19(5), e0303456.
"""

# REQUIRED PACKAGES
import geopandas as gpd
from libpysal import weights as psw
import numpy as np
import scipy.stats as st
import statsmodels.stats.multitest as mt
import time

# -----------------------------
# INPUT DATA and PARAMETERS
# -----------------------------
start = time.time()

in_path = "full path to your_input_layer.shp"  # polygons with 2+ numeric fields
out_path = "full path to your_output_layer.shp"

df = gpd.read_file(in_path)

# Analysis variables (as in attribute table)
att_list = ['a', 'b', 'c', 'd']

# Standardize attributes (sample SD, ddof=1) -> consistent with Geary convention
att_list_norm = []
for att in att_list:
    df['n_' + att] = (df[att] - df[att].mean()) / df[att].std(ddof=1)
    att_list_norm.append('n_' + att)

# Inference setup
permutations = 9999        # use 99999 for final runs (very expensive)
significance = 0.0001      # for FDR alpha (<= 1/permutations recommended)
np.random.seed(123)

# Spatial weights (Queen contiguity)
w = psw.Queen.from_dataframe(df)  # queen contiguity (edge or vertex)
# Alternative:
# w = psw.Rook.from_dataframe(df)

# Build full weights matrix from ORIGINAL (binary) weights first
w.transform = 'o'          # original; keep symmetric/binary structure for Queen
wf_bin = w.full()[0].astype(float)

# Ensure diagonal is zero (usually is, but be explicit)
np.fill_diagonal(wf_bin, 0.0)

# Neighbors dictionary
neigh_dic = {i: w.neighbors[i] for i in df.index}

# Fit normalized attributes into a matrix (n x k)
att_mtx_norm = df[att_list_norm].to_numpy()
n, k = att_mtx_norm.shape

# -----------------------------
# HELPER FUNCTIONS
# -----------------------------
def global_sum_normalize(W):
    """Global (sum-)normalization: sum_{ij} w_ij = 1."""
    s = W.sum()
    if s == 0:
        raise ValueError("Weight matrix sum is zero; cannot global-normalize.")
    return W / s

def row_standardize(W):
    """Row-standardization: sum_j w_ij = 1 for rows with at least one neighbor."""
    R = W.copy()
    rs = R.sum(axis=1)
    for i in range(R.shape[0]):
        if rs[i] > 0:
            R[i, :] /= rs[i]
    return R

def euclidean_d2(focal_vec, neigh_mtx):
    """
    focal_vec: (k,)
    neigh_mtx: (m, k)  neighbors' vectors
    returns: (m,) squared Euclidean distances in standardized space
    """
    diff = neigh_mtx - focal_vec
    return np.sum(diff * diff, axis=1)

def mahalanobis_d2(focal_vec, neigh_mtx, inv_cov):
    """
    focal_vec: (k,)
    neigh_mtx: (m, k)
    inv_cov: (k, k) inverse covariance of standardized vectors
    returns: (m,) squared Mahalanobis distances
    """
    diff = neigh_mtx - focal_vec  # (m, k)
    # quadratic form per row: diff @ inv_cov @ diff^T
    return np.einsum('ij,jk,ik->i', diff, inv_cov, diff)

def local_geary_multivariate(att_mtx, W, neigh_dict, distance="euclidean", inv_cov=None, scale_canonical=True):
    """
    Computes multivariate local Geary for each i:
        C_i = (1/(2k)) * sum_j w_ij * d(i,j)^2   [canonical Chen-style]
    If scale_canonical=False:
        C_i = sum_j w_ij * d(i,j)^2             [legacy-like scaling]
    distance: "euclidean" or "mahalanobis"
    """
    n, k = att_mtx.shape
    C = np.zeros(n, dtype=float)

    for i in range(n):
        js = neigh_dict[i]
        if len(js) == 0:
            C[i] = np.nan
            continue

        focal = att_mtx[i, :]
        neigh_mtx = att_mtx[js, :]

        if distance == "euclidean":
            d2 = euclidean_d2(focal, neigh_mtx)
        elif distance == "mahalanobis":
            if inv_cov is None:
                raise ValueError("inv_cov is required for Mahalanobis distance.")
            d2 = mahalanobis_d2(focal, neigh_mtx, inv_cov)
        else:
            raise ValueError("distance must be 'euclidean' or 'mahalanobis'")

        wij = W[i, js]
        Ci = np.sum(wij * d2)

        if scale_canonical:
            Ci = (1.0 / (2.0 * k)) * Ci  # Chen-style canonical scaling

        C[i] = Ci

    return C

def conditional_permutations_C(att_mtx_obs, neigh_dict, W, permutations, distance="euclidean", inv_cov=None, scale_canonical=True):
    """
    Conditional permutations, keeping focal attributes fixed and permuting attributes over locations
    for neighbors. Returns:
        C_sim: (n, permutations) simulated statistics for each i
    """
    n, k = att_mtx_obs.shape
    C_sim = np.zeros((n, permutations), dtype=float)

    # Pre-split columns for fast permutation
    cols = [att_mtx_obs[:, j].copy() for j in range(k)]

    for p in range(permutations):
        # permute each variable across all locations
        perm_cols = [np.random.permutation(cols[j]) for j in range(k)]
        perm_mtx = np.column_stack(perm_cols)  # (n, k)

        # compute C_i for this permutation, conditioning on focal location's observed vector
        for i in range(n):
            js = neigh_dict[i]
            if len(js) == 0:
                C_sim[i, p] = np.nan
                continue

            focal = att_mtx_obs[i, :]       # keep focal observed
            neigh_mtx = perm_mtx[js, :]     # neighbors permuted

            if distance == "euclidean":
                d2 = euclidean_d2(focal, neigh_mtx)
            elif distance == "mahalanobis":
                if inv_cov is None:
                    raise ValueError("inv_cov is required for Mahalanobis distance.")
                d2 = mahalanobis_d2(focal, neigh_mtx, inv_cov)
            else:
                raise ValueError("distance must be 'euclidean' or 'mahalanobis'")

            wij = W[i, js]
            Ci = np.sum(wij * d2)

            if scale_canonical:
                Ci = (1.0 / (2.0 * k)) * Ci

            C_sim[i, p] = Ci

    return C_sim

def permutation_pvalues_two_sided(C_obs, C_sim):
    """
    Two-sided permutation p-values using the "extreme tail" count approach.
    Returns p_two_sided (n,)
    """
    n, P = C_sim.shape
    p = np.zeros(n, dtype=float)

    for i in range(n):
        sim = C_sim[i, :]
        obs = C_obs[i]

        if np.isnan(obs) or np.all(np.isnan(sim)):
            p[i] = np.nan
            continue

        # one-sided count for greater-than
        larger = np.sum(sim > obs)

        # two-sided via min-tail
        larger = min(larger, P - larger)
        p[i] = (larger + 1.0) / (P + 1.0)

    return 2.0 * p  # two-sided

# -----------------------------
# OPTION BLOCKS
# -----------------------------
# Choose ONE block below (A, B, or C) and comment out the others.

# ==========================================
# (A) LEGACY-LIKE: Row-standardized + Euclidean
#     (closest to your current implementation)
#     NOTE: this does NOT enforce Chen's local-global canonical consistency.
# ==========================================
W_A = row_standardize(wf_bin)
C_obs_A = local_geary_multivariate(
    att_mtx=att_mtx_norm,
    W=W_A,
    neigh_dict=neigh_dic,
    distance="euclidean",
    inv_cov=None,
    scale_canonical=False   # legacy scaling (no 1/(2k))
)
df["C_ki_A"] = C_obs_A

# Normal approximation (optional; keep if you want)
C_z_A = (C_obs_A - np.nanmean(C_obs_A)) / np.nanstd(C_obs_A)
C_p_norm_A = st.norm.sf(np.abs(C_z_A)) * 2
C_p_norm_fdr_A = mt.fdrcorrection(C_p_norm_A, alpha=significance)
df["C_p_norm_A"] = C_p_norm_A
df["C_norm_fdr_A"] = C_p_norm_fdr_A[1]
df["C_z_norm_A"] = C_z_A

# Permutation inference
C_sim_A = conditional_permutations_C(
    att_mtx_obs=att_mtx_norm,
    neigh_dict=neigh_dic,
    W=W_A,
    permutations=permutations,
    distance="euclidean",
    inv_cov=None,
    scale_canonical=False
)
E_A = np.nanmean(C_sim_A, axis=1)
S_A = np.nanstd(C_sim_A, axis=1)
df["C_z_sim_A"] = (C_obs_A - E_A) / S_A
p_two_A = permutation_pvalues_two_sided(C_obs_A, C_sim_A)
df["C_p_sim_A"] = p_two_A
df["C_sim_fdr_A"] = mt.fdrcorrection(p_two_A, alpha=significance)[1]


# ==========================================
# (B) CHEN-CANONICAL (GC3-style): Global sum-normalized + Euclidean + 1/(2k)
#     This is the recommended Chen-consistent multivariate extension.
# ==========================================
# W_B = global_sum_normalize(wf_bin)
# C_obs_B = local_geary_multivariate(
#     att_mtx=att_mtx_norm,
#     W=W_B,
#     neigh_dict=neigh_dic,
#     distance="euclidean",
#     inv_cov=None,
#     scale_canonical=True    # includes 1/(2k)
# )
# df["C_ki_B"] = C_obs_B
#
# # Permutation inference
# C_sim_B = conditional_permutations_C(
#     att_mtx_obs=att_mtx_norm,
#     neigh_dict=neigh_dic,
#     W=W_B,
#     permutations=permutations,
#     distance="euclidean",
#     inv_cov=None,
#     scale_canonical=True
# )
# E_B = np.nanmean(C_sim_B, axis=1)
# S_B = np.nanstd(C_sim_B, axis=1)
# df["C_z_sim_B"] = (C_obs_B - E_B) / S_B
# p_two_B = permutation_pvalues_two_sided(C_obs_B, C_sim_B)
# df["C_p_sim_B"] = p_two_B
# df["C_sim_fdr_B"] = mt.fdrcorrection(p_two_B, alpha=significance)[1]


# ==========================================
# (C) CHEN-CANONICAL (GC3-style): Global sum-normalized + Mahalanobis + 1/(2k)
#     Covariance-aware multivariate differences.
# ==========================================
# W_C = global_sum_normalize(wf_bin)
#
# # Sample covariance of standardized vectors (k x k), and its (pseudo-)inverse
# Sigma_z = np.cov(att_mtx_norm, rowvar=False, bias=False)   # sample cov (ddof=1)
# inv_Sigma_z = np.linalg.pinv(Sigma_z)                     # robust inverse
#
# C_obs_C = local_geary_multivariate(
#     att_mtx=att_mtx_norm,
#     W=W_C,
#     neigh_dict=neigh_dic,
#     distance="mahalanobis",
#     inv_cov=inv_Sigma_z,
#     scale_canonical=True
# )
# df["C_ki_C"] = C_obs_C
#
# # Permutation inference (same inv_cov; focal fixed; neighbors permuted)
# C_sim_C = conditional_permutations_C(
#     att_mtx_obs=att_mtx_norm,
#     neigh_dict=neigh_dic,
#     W=W_C,
#     permutations=permutations,
#     distance="mahalanobis",
#     inv_cov=inv_Sigma_z,
#     scale_canonical=True
# )
# E_C = np.nanmean(C_sim_C, axis=1)
# S_C = np.nanstd(C_sim_C, axis=1)
# df["C_z_sim_C"] = (C_obs_C - E_C) / S_C
# p_two_C = permutation_pvalues_two_sided(C_obs_C, C_sim_C)
# df["C_p_sim_C"] = p_two_C
# df["C_sim_fdr_C"] = mt.fdrcorrection(p_two_C, alpha=significance)[1]


# -----------------------------
# Mm_i CLASSIFICATION (unchanged logic; choose which C_ki to use)
# -----------------------------
# Pick the statistic column produced by the option you use:
C_col = "C_ki_A"   # or "C_ki_B" or "C_ki_C"

class_Cki = []
Mmc_Di_ref = df[att_list_norm].median().mean()

for i in df.index:
    js = neigh_dic[i]
    loi = np.hstack((i, js))  # i plus neighbors

    # candidate cluster if local Geary is "low"
    if df[C_col].iloc[i] <= df[C_col].mean():
        Mmc_i = df[att_list_norm].iloc[loi, :].median().mean()
        if Mmc_i > Mmc_Di_ref:
            class_Cki.append('hh')
        else:
            class_Cki.append('ll')
    else:
        # candidate outlier
        Mmo_Di_ref = df[att_list_norm].iloc[js, :].median().mean()
        Mmo_i = df[att_list_norm].iloc[i, :].mean()
        if Mmo_i > Mmo_Di_ref:
            class_Cki.append('hl')
        else:
            class_Cki.append('lh')

df["class_Cki"] = class_Cki

# Save output
df.to_file(driver='ESRI Shapefile', filename=out_path)

end_ci = time.time()
print("time_ci")
print(end_ci - start)
