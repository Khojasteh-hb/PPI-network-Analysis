# Compare structural properties in corona and influenza PPI networks(part2)

library(readr)
library(igraph)
library(poweRlaw)
library(Matrix)
library(intergraph)
library(centiserve)
library(ggplot2)

Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

corona_nodes <- data.frame(name = V(corona_ppi)$name)
influenza_nodes <- data.frame(name = V(influenza_ppi)$name)

#local clustering coefficient-----------------------------------------------------------------
corona_lcc = transitivity(corona_ppi, type = "local", isolates = 'zero')
corona_lcc = sort(corona_lcc, decreasing = TRUE)

#influenza_lcc = transitivity(influenza_ppi)
