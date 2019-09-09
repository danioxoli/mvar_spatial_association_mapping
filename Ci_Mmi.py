# -*- coding: utf-8 -*-
"""
#
# Project:  Multivariate LISA 
#
# Purposes: a) Multivariate Local Geary c computation (Anselin, 2019) 
#           b) Multivariate spatial clusters and outliers classification Mm_i (Oxoli, n.a.)
#
# target data: Vector layers (GeoDataframe)
#            
# Author:   Daniele Oxoli (daniele.oxoli@polimi.it)
#
# Affiliation: Department of Civil and Environmental Engineering | GEOlab, Politecnico di Milano, P.zza Leonardo da Vinci 32, 20133, Milano, Italy
#
"""

'''
#REQUIRED PACKAGES
'''
# data management libraries
import geopandas as gpd

# stats and computing libraries
import pysal as ps
import numpy as np
import scipy.stats as st

# plotting libraries
import matplotlib.pyplot as plt

# simulated p-values correction 
import statsmodels.stats.multitest as mt

#runtime check
import time 

'''
# INPUT DATA and PARAMETERS SET UP
'''
start = time.time()

in_path = "your_input_layer.shp" # a shapefile of polygons with 2+ numeric attribute fileds, i.e. variables
out_path = "your_input_layer.shp"

df = gpd.read_file(in_path)

# have a look into the the analysis variable and list them
list(df)

#list the analysis variable using the same name of the input layer attribute table
att_list = ['a', 'b','c','d']

# normalize attributes for the analysis
att_list_norm = []
for att in att_list:
    df['n_'+att]= (df[att]-df[att].mean())/df[att].std()
    att_list_norm.append('n_'+att)


# simple quantile plot of the selected attributes
i = 0

fig, axes = plt.subplots(nrows=1, ncols=len(att_list_norm), sharey=True, figsize=(7*len(att_list_norm),7))
for att_norm in att_list_norm:
    df.plot(column=att_norm, cmap='OrRd', scheme='quantiles', k=4, edgecolor=None, legend= True , ax=axes[i])
    axes[i].set_title(att_list[i], fontstyle='italic')
    i += 1

# parameters set up
weigth_type = 'r' # 'o' = original binary, 'r' = row-stand.

permutations = 99999 # number of random permutations (this value is critical to the compuational time, chose 999 for testing)

significance = 0.005 # significance level for CSR testing (used by statsmodels but not affecting the output)

# spatial weight matrix creation
w = ps.weights.Queen.from_dataframe(df)
w.transform= weigth_type
wf = w.full()[0]


# fit the normalized attribute arrays into a matrix
att_arrs_norm = [df[att_norm] for att_norm in att_list_norm]
att_mtx_norm = np.array(att_arrs_norm).transpose()
n_of_att = np.shape(att_mtx_norm)[1]

'''
# MULTIVARIATE LOCAL GEARY'c COMPUTATION 
'''

neigh = w.neighbors
neigh_dic = {key: neigh[key] for key in list(df.index)}


d_square_list = []
C_ki_list = []

for keys in neigh_dic:
    loi = np.hstack((keys,neigh_dic[keys]))
    loi_att_mtx = att_mtx_norm[loi, :]
    focal_att_array = att_mtx_norm[keys, :]
    wf_loi = wf[keys, loi]
    
    for i in range(0, n_of_att):
        dist_square = ((loi_att_mtx[:, i] - focal_att_array[i])**2)
        d_square_list.append(dist_square)
        
    d_square_array = np.array(d_square_list)
    C_vi = np.sum(wf_loi * d_square_array, axis=1)
    C_ki_list.append(np.sum(C_vi))
    d_square_list = []

C_ki = np.array(C_ki_list) # observed statistics vector
    
# add results to the dataframe
df['C_ki'] = C_ki   

# LOCAL GEARY'C INFERENCE 

# normality assumption
C_ki_z_norm = (C_ki - np.mean(C_ki))/np.std(C_ki) # standard variates from standard normal approximation
C_p_norm = st.norm.sf(abs(C_ki_z_norm))*2 #p-values based on standard normal approximation
C_p_norm_fdr  = mt.fdrcorrection(C_p_norm, alpha=significance) # correction for p-values based on standard normal approximation (FDR)

# add results to the dataframe
df['C_p_norm'] = C_p_norm
df['C_norm_fdr'] = C_p_norm_fdr[1]
df['C_z_norm'] = C_ki_z_norm


# conditional permutations 
np.random.seed(123)

C_ki_perm_list = []

for k in range(0,permutations):
    C_ki_list = []
    perm_att = []
    Di_perm = []
    for a in range(0,n_of_att):
        perm_att_a = np.random.permutation(att_arrs_norm[a])
        perm_att.append(perm_att_a)
    perm_mtx = np.array(perm_att).transpose()
   
    for keys in neigh_dic:
        loi = np.array(neigh_dic[keys])
        focal_att_array = att_mtx_norm[keys, :] # keep focal location observed attributes
        loi_att_mtx = np.vstack((focal_att_array, perm_mtx[loi, :]))
        wf_loi = np.hstack(([0.0], wf[keys, loi]))
        
        for i in range(0, n_of_att):
            dist_square = ((loi_att_mtx[:, i] - focal_att_array[i])**2)
            d_square_list.append(dist_square)
            
        d_square_array = np.array(d_square_list)
        C_vi = np.sum(wf_loi * d_square_array, axis=1)
        C_ki_list.append(np.sum(C_vi))
        d_square_list = []
    
    C_ki_perm_list.append(C_ki_list)
    

# simulated statistics matrix 
C_ki_sim = np.array(C_ki_perm_list).transpose()

# simulated statistics moments 
E_C_ki_perm= [np.mean(C_ki_sim[i]) for i in range(0,len(C_ki_sim))] # mean from permutations
S_C_ki_perm = [np.std(C_ki_sim[i]) for i in range(0,len(C_ki_sim))] # standard deviation from permutations
C_ki_z_sim = (C_ki - E_C_ki_perm)/S_C_ki_perm # standard variates from permutations

# simulated p-values based on permutations (one-sided), null: spatial randomness
C_p_sim = np.zeros((np.shape(C_ki)[0]))

for i in range(0,np.shape(C_ki)[0]):
    above = C_ki_sim[i] > C_ki[i] 
    larger = above.sum(0)
    if (permutations - larger) < larger:
        larger = permutations - larger
    C_p_sim[i] = ((larger + 1.0) / (permutations + 1.0))

# correction for simulated p-values (FDR)
C_p_sim_fdr = mt.fdrcorrection(C_p_sim*2, alpha=significance)


# add results to the dataframe  
df['C_z_sim'] = C_ki_z_sim
df['C_p_sim'] = C_p_sim*2
df['C_sim_fdr'] = C_p_sim_fdr[1]


'''
# Mm_i CLASSIFICATION (on the clusters and oultiers form the local Geary's c)
'''

class_Cki = []

Mmc_Di_ref = df[att_list_norm].median().mean()


for keys in neigh_dic:
    loi = np.hstack((keys,neigh_dic[keys]))    
    if df['C_ki'].iloc[keys] <= df['C_ki'].mean(): # in case of candidate cluster
        Mmc_i = df[att_list_norm].iloc[loi, :].median().mean()
        if Mmc_i > Mmc_Di_ref:
            class_Cki.append('hh')
        else:
            class_Cki.append('ll')    
    else: # in case of candidate outlier
        Mmo_Di_ref = df[att_list_norm].iloc[neigh_dic[keys], :].median().mean()
        Mmo_i = df[att_list_norm].iloc[keys, :].mean()
        if Mmo_i > Mmo_Di_ref:
            class_Cki.append('hl')
        else:
            class_Cki.append('lh')

# add results to the dataframe
df['class_Cki'] = class_Cki


# save a shapefile with the results of the local Geary's c + Mm_i computation
df.to_file(driver = 'ESRI Shapefile', filename= out_path)

end_ci = time.time()
print('time_ci')
print(end_ci - start)


