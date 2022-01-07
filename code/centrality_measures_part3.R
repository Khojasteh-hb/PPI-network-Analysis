# Computing of centrality measures in SARS-CoV-2  and (H1N1)influenza PPI networks 
# Part 3

library(readr)
library(igraph)


# Reading SARS-CoV-2 and influenza datasets
Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

# Eigenvector----------------------------------------------------------------------------------------

corona_eig = alpha_centrality(corona_ppi, nodes = V(corona_ppi), alpha = 1, loops = FALSE,
                              exo = 1, weights = NULL, tol = 1e-07, sparse = TRUE)

sorted_corona_eig = sort(corona_eig, decreasing = TRUE)
print(names(sorted_corona_eig[1:10]))

influenza_eig = alpha_centrality(influenza_ppi, nodes = V(influenza_ppi), alpha = 1, loops = FALSE,
                                 exo = 1, weights = NULL, tol = 1e-07, sparse = TRUE)

sorted_influenza_eig = sort(influenza_eig, decreasing = TRUE)
print(names(sorted_influenza_eig[1:10]))

# Subgraph-------------------------------------------------------------------------------------------

corona_sub = subgraph_centrality(corona_ppi, diag = FALSE)

sorted_corona_sub = sort(corona_sub, decreasing = TRUE)
print(names(sorted_corona_sub[1:10]))

influenza_sub = subgraph_centrality(influenza_ppi, diag = FALSE)

sorted_influenza_sub = sort(influenza_sub, decreasing = TRUE)
print(names(sorted_influenza_sub[1:10]))





