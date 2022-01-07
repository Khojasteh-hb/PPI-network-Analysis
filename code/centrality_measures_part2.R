# Computing of centrality measures in SARS-CoV-2  and (H1N1)influenza PPI networks 
# Part 2

library(readr)
library(igraph)
library(centiserve)

# Reading SARS-CoV-2 and influenza datasets
Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

# laplacian------------------------------------------------------------------------------------------

corona_la = laplacian(corona_ppi, vids = V(corona_ppi), mode = "all", loops = FALSE)

sorted_corona_la = sort(corona_la, decreasing = TRUE)
print(names(sorted_corona_la[1:10]))

influenza_la = laplacian(influenza_ppi, vids = V(influenza_ppi), mode = "all", loops = FALSE)

sorted_influenza_la = sort(influenza_la, decreasing = TRUE)
print(names(sorted_influenza_la[1:10]))

# Leverage-------------------------------------------------------------------------------------------

corona_lev = leverage(corona_ppi, vids = V(corona_ppi), mode = "all", loops = FALSE)

sorted_corona_lev = sort(corona_lev, decreasing = TRUE)
print(names(sorted_corona_lev[1:10]))

influenza_lev = leverage(influenza_ppi, vids = V(influenza_ppi), mode = "all", loops = FALSE)

sorted_influenza_lev = sort(influenza_lev, decreasing = TRUE)
print(names(sorted_influenza_lev[1:10]))

# Lin------------------------------------------------------------------------------------------------

corona_lin = lincent(corona_ppi, vids = V(corona_ppi), mode = "all", weights = NULL)

sorted_corona_lin = sort(corona_lin, decreasing = TRUE)
print(names(sorted_corona_lin[1:10]))

influenza_lin = lincent(influenza_ppi, vids = V(influenza_ppi), mode = "all", weights = NULL)

sorted_influenza_lin = sort(influenza_lin, decreasing = TRUE)
print(names(sorted_influenza_lin[1:10]))

# lobby---------------------------------------------------------------------------------------------

corona_lob = lobby(corona_ppi, vids = V(corona_ppi), mode = "all", loops = FALSE)

sorted_corona_lob = sort(corona_lob, decreasing = TRUE)
print(names(sorted_corona_lob[1:10]))

influenza_lob = lobby(influenza_ppi, vids = V(influenza_ppi), mode = "all", loops = FALSE)

sorted_influenza_lob = sort(influenza_lob, decreasing = TRUE)
print(names(sorted_influenza_lob[1:10]))

# Markov---------------------------------------------------------------------------------------------

corona_mar = markovcent(corona_ppi, vids = V(corona_ppi))

sorted_corona_mar = sort(corona_mar, decreasing = TRUE)
print(names(sorted_corona_mar[1:10]))

influenza_mar = markovcent(influenza_ppi, vids = V(influenza_ppi))

sorted_influenza_mar = sort(influenza_mar, decreasing = TRUE)
print(names(sorted_influenza_mar[1:10]))

# Radiality------------------------------------------------------------------------------------------

corona_rad = radiality(corona_ppi, vids = V(corona_ppi), mode = "all", weights = NULL)

sorted_corona_rad = sort(corona_rad, decreasing = TRUE)
print(names(sorted_corona_rad[1:10]))

influenza_rad = radiality(influenza_ppi, vids = V(influenza_ppi), mode = "all", weights = NULL)

sorted_influenza_rad = sort(influenza_rad, decreasing = TRUE)
print(names(sorted_influenza_rad[1:10]))

