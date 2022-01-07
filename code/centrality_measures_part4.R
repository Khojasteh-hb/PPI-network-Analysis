# Computing of centrality measures in SARS-CoV-2  and (H1N1)influenza PPI networks 
# Part 4

library(readr)
library(igraph)

# Reading SARS-CoV-2 and influenza datasets
Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)


# Betweenness----------------------------------------------------------------------------------------

corona_bet = betweenness(corona_ppi, v = V(corona_ppi), directed = FALSE, normalized = TRUE)

sorted_corona_bet = sort(corona_bet, decreasing = TRUE)
print(names(sorted_corona_bet[1:10]))

influenza_bet = betweenness(influenza_ppi, v = V(influenza_ppi), directed = FALSE, normalized = TRUE)

sorted_influenza_bet = sort(influenza_bet, decreasing = TRUE)
print(names(sorted_influenza_bet[1:10]))


# Eccentricity---------------------------------------------------------------------------------------
corona_ecc = eccentricity(corona_ppi,vids = V(corona_ppi), mode = "all")

sorted_corona_ecc = sort(corona_ecc, decreasing = TRUE)
print(names(sorted_corona_ecc[1:10]))

influenza_ecc = eccentricity(influenza_ppi, vids = V(influenza_ppi), mode = "all")

sorted_influenza_ecc = sort(influenza_ecc, decreasing = TRUE)
print(names(sorted_influenza_ecc[1:10]))

# Degree---------------------------------------------------------------------------------------------

corona_deg = degree(corona_ppi, mode = "all")

sorted_corona_deg = sort(corona_deg, decreasing = TRUE)
print(names(sorted_corona_deg[1:10]))

influenza_deg = degree(influenza_ppi, mode = "all")

sorted_influenza_deg = sort(influenza_deg, decreasing = TRUE)
print(names(sorted_influenza_deg[1:10]))

# Kleinberg's authority scores-----------------------------------------------------------------------

corona_auth = authority_score(corona_ppi, scale = TRUE, weights = NULL, options = arpack_defaults)

sorted_corona_auth = sort(corona_auth$vector, decreasing = TRUE)
print(names(sorted_corona_auth[1:10]))

influenza_auth = authority_score(influenza_ppi, scale = TRUE, weights = NULL, options = arpack_defaults)

sorted_influenza_auth = sort(influenza_auth$vector, decreasing = TRUE)
print(names(sorted_influenza_auth[1:10]))

# Kleinberg's hub scores-----------------------------------------------------------------------------

corona_hub = hub_score(corona_ppi, scale = TRUE, weights = NULL, options = arpack_defaults)

sorted_corona_hub = sort(corona_hub$vector, decreasing = TRUE)
print(names(sorted_corona_hub[1:10]))

influenza_hub = hub_score(influenza_ppi, scale = TRUE, weights = NULL, options = arpack_defaults)

sorted_influenza_hub = sort(influenza_hub$vector, decreasing = TRUE)
print(names(sorted_influenza_hub[1:10]))