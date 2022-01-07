# Network global properties of SARS-CoV-2 and (H1N1) influenza PPINs. 

library(readr)
library(igraph)
library(pracma)


# Reading SARS-CoV-2 and influenza datasets
Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

# Network density------------------------------------------------------------------------------------
corona_edgeDen = edge_density(corona_ppi, loops = FALSE)
corona_edgeDen = round(corona_edgeDen, 4)

influenza_edgeDen = edge_density(influenza_ppi, loops = FALSE)
influenza_edgeDen = round(influenza_edgeDen, 4)

# Network diameter-----------------------------------------------------------------------------------
corona_dia = diameter(corona_ppi, directed = FALSE, unconnected = FALSE, weights = NULL)

influenza_dia = diameter(influenza_ppi, directed = FALSE, unconnected = FALSE, weights = NULL)

#Centralization of PPI Network-----------------------------------------------------------------------
corona_centr = centr_degree(corona_ppi, mode = "all", loops = FALSE, normalized = TRUE)
corona_centralization = round(corona_centr$centralization, 4)

influenza_centr = centr_degree(influenza_ppi, mode = "all", loops = FALSE, normalized = TRUE)
influenza_centralization = round(influenza_centr$centralization, 4)
