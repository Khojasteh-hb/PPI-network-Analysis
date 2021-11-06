# Compare structural properties in corona and influenza PPI networks(part1)

library(readr)
library(igraph)
library(Matrix)
#library(DirectedClustering)
library(centiserve)
library(ggplot2)

Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

#Plot PPI Network--------------------------------------------------------------------
#tkplot(corona_ppi)
#tkplot(influenza_ppi)

#Degree Distribution-----------------------------------------------------------------
p1 = degree.distribution(corona_ppi)
plot(p1,type = 'o', col = "blue",  xlab = "k", ylab = "p(k)")
p2 = degree.distribution(influenza_ppi)
#plot(p2,type = 'o', col = "blue", xlab ="k", ylab = "p(k)")

#t1 = table(degree(corona_ppi))
#plot(t1 / sum(t1), xlim=c(1,50), ylim=c(0, 0.2), xlab="Degree", ylab="Frequency")

#t2 = table(degree(influenza_ppi))
#plot(t2 / sum(t2), xlim=c(1,50), ylim=c(0, 0.2), xlab="Degree", ylab="Frequency")

#Graph density------------------------------------------------------------------------
corona_edgeDen = edge_density(corona_ppi, loops = FALSE)
corona_edgeDen = round(corona_edgeDen, 4)

influenza_edgeDen = edge_density(influenza_ppi, loops = FALSE)
influenza_edgeDen = round(influenza_edgeDen, 4)

#Centralization of PPI Network---------------------------------------------------------
corona_centr = centr_degree(corona_ppi, mode = "all", loops = FALSE, normalized = TRUE)
corona_centralization = round(corona_centr$centralization, 4)

influenza_centr = centr_degree(influenza_ppi, mode = "all", loops = FALSE, normalized = TRUE)
influenza_centralization = round(influenza_centr$centralization, 4)

#Degree centrality---------------------------------------------------------------------
corona_deg = degree(corona_ppi,mode = "all")
corona_deg = sort(corona_deg, decreasing = TRUE)

influenza_deg = degree(influenza_ppi,mode = "all")
influenza_deg = sort(influenza_deg, decreasing = TRUE)

#Closeness centrality------------------------------------------------------------------
corona_clo = closeness(corona_ppi, vids = V(corona_ppi), mode = "all", normalized = TRUE)
corona_clo = round(corona_clo, 4)
corona_clo = sort(corona_clo, decreasing = TRUE)

influenza_clo = closeness(influenza_ppi, vids = V(influenza_ppi), mode = "all", normalized = TRUE)
influenza_clo = round(influenza_clo, 4)
influenza_clo = sort(influenza_clo, decreasing = TRUE)

#Betweenness centrality-----------------------------------------------------------------
corona_bet = betweenness(corona_ppi, v = V(corona_ppi), directed = FALSE, normalized = TRUE)
corona_bet = round(corona_bet, 4)
corona_bet = sort(corona_bet, decreasing = TRUE)

influenza_bet = betweenness(influenza_ppi, v = V(influenza_ppi), directed = FALSE, normalized = TRUE)
influenza_bet = round(influenza_bet, 4)
influenza_bet = sort(influenza_bet, decreasing = TRUE)

#Eigenvector centrality------------------------------------------------------------------
#corona_eign = centr_eigen(corona_ppi, directed = FALSE, scale = TRUE, normalized = TRUE)
#corona_eign = round(corona_eign, 4)
#corona_eign = sort(corona_eign, decreasing = TRUE)

#influenza_eign = centr_eigen(influenza_ppi, directed = FALSE, scale = TRUE, normalized = TRUE)
#influenza_eign = round(influenza_eign, 4)
#influenza_eign = sort(influenza_eign, decreasing = TRUE)