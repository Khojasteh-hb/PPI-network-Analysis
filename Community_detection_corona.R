# Community detection in influenza PPI networks

library(readr)
library(igraph)
library(Matrix)
library(DirectedClustering)
library(centiserve)
library(visNetwork)

Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)

#fast greedy------------------------------------------------------------------------------------------
fg_com <- fastgreedy.community(corona_ppi, merges = TRUE,
                           modularity = TRUE, membership = TRUE)

#Network Visualization
#V(corona_ppi)$community <- fg_com$membership
#nodes <- data.frame(id = V(corona_ppi)$name, title = V(corona_ppi)$name, group = V(corona_ppi)$community)
#nodes <- nodes[order(nodes$id, decreasing = F),]
#edges <- get.data.frame(corona_ppi, what="edges")[1:2]

#visNetwork(nodes, edges) %>%
#visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE)

#groups_count = max(fg_com$membership)
#corona_groups =  membership(fg_com)
#corona_group = list()

#for (i in 1:groups_count){
#  cat("group:", i)
#  cat("\n")
#  tmp1 = list(subset(corona_groups, corona_groups == i))
#  corona_group[[i]] = tmp1
  
#  tmp2 = unlist(tmp1)
#  print(names(tmp2))
#}
#Infomap community finding---------------------------------------------------------------------------
info_com <- infomap.community(corona_ppi,  e.weights = NULL, v.weights = NULL, 
                              nb.trials = 10, modularity = TRUE)

#Finding communities based on propagating labels-----------------------------------------------------
labpro_com <- label.propagation.community(corona_ppi, weights = NULL, initial = NULL,
                                          fixed = NULL)


#Community structure detecting based on the leading eigenvector of the community matrix--------------
eigen_com <- leading.eigenvector.community(corona_ppi, steps = -1, weights = NULL,
                                           start = NULL, options = arpack_defaults,
                                           callback = NULL, extra = NULL, env = parent.frame())
                                           

#Finding community structure by multi-level optimization of modularity-------------------------------
lou_com <- cluster_louvain(corona_ppi, weights = NULL)

#Community strucure via short random walks-----------------------------------------------------------
walk_com <- walktrap.community(corona_ppi, steps = 4, merges = TRUE, modularity = TRUE, 
                               membership = TRUE)

                                            
                                            
                                            
                                            



