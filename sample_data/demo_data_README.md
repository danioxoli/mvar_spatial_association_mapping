
Data consits of regula vector grid (100x100 cells) in Shapefile format. To each cell, five attributes are assigned:

|  id |  q  |    a   |    b   |    c    |    d    |
|:---:|:---:|:------:|:------:|:-------:|:-------:|
|  0  |  0  | 1.1715 | 0.7288 | -0,2517 | -0,5971 |
|  1  |  2  | 0,1555 | 1,4787 |  0,5880 | -0,4218 |
| ... | ... |   ...  |   ...  |   ...   |   ...   |

**id** = unique id of the geometry

**q** = belonging quartile (from 1 to 4) interval of the assigned variable observations (a,b,c,d). Quartiles are used to simulate the similarity of the different variable observations within each cell. Value 0 indicates instead random assignment of the observations.

**a**, **b**,**c**, **d** = simulated variable observations (to be used for multivariate spatial clusters and outliers mapping)
