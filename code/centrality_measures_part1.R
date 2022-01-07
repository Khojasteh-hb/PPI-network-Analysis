# Computing of centrality measures in SARS-CoV-2  and (H1N1)influenza PPI networks 
# Part 1

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

# Average distance-----------------------------------------------------------------------------------

corona_av = averagedis(corona_ppi, vids = V(corona_ppi), mode = "all", weights = NULL)

sorted_corona_av = sort(corona_av, decreasing = TRUE)
print(names(sorted_corona_av[1:10]))

influenza_av = averagedis(influenza_ppi, vids = V(influenza_ppi), mode = "all", weights = NULL)

sorted_influenza_av = sort(influenza_av, decreasing = TRUE)
print(names(sorted_influenza_av[1:10]))

# Barycenter-----------------------------------------------------------------------------------------

corona_bar = barycenter(corona_ppi, vids = V(corona_ppi), mode = "all", weights = NULL)

sorted_corona_bar = sort(corona_bar, decreasing = TRUE)
print(names(sorted_corona_bar[1:10]))

influenza_bar = barycenter(influenza_ppi, vids = V(influenza_ppi), mode = "all", weights = NULL)

sorted_influenza_bar = sort(influenza_bar, decreasing = TRUE)
print(names(sorted_influenza_bar[1:10]))

# Closeness.freeman----------------------------------------------------------------------------------

corona_clo = closeness.freeman(corona_ppi, vids = V(corona_ppi), mode = "all",
                               weights = NULL, normalized = FALSE)

sorted_corona_clo = sort(corona_clo, decreasing = TRUE)
print(names(sorted_corona_clo[1:10]))

influenza_clo = closeness.freeman(influenza_ppi, vids = V(influenza_ppi), mode = "all",
                                  weights = NULL, normalized = FALSE)

sorted_influenza_clo = sort(influenza_clo, decreasing = TRUE)
print(names(sorted_influenza_clo[1:10]))

# Closeness.latora-----------------------------------------------------------------------------------

corona_lat = closeness.latora(corona_ppi, vids = V(corona_ppi), mode = "all",
                              weights = NULL, normalized = FALSE)

sorted_corona_lat = sort(corona_lat, decreasing = TRUE)
print(names(sorted_corona_lat[1:10]))

influenza_lat = closeness.latora(influenza_ppi, vids = V(influenza_ppi), mode = "all",
                                 weights = NULL, normalized = FALSE)

sorted_influenza_lat = sort(influenza_lat, decreasing = TRUE)
print(names(sorted_influenza_lat[1:10]))

# Closeness.residual---------------------------------------------------------------------------------

corona_res = closeness.residual(corona_ppi, vids = V(corona_ppi), mode = "all",
                                weights = NULL)

sorted_corona_res = sort(corona_res, decreasing = TRUE)
print(names(sorted_corona_res[1:10]))

influenza_res = closeness.residual(influenza_ppi, vids = V(influenza_ppi), mode = "all",
                                   weights = NULL)

sorted_influenza_res = sort(influenza_res, decreasing = TRUE)
print(names(sorted_influenza_res[1:10]))

# Decay----------------------------------------------------------------------------------------------

corona_dec = decay(corona_ppi, vids = V(corona_ppi), mode = "all",
                   weights = NULL, decay = 0.5)

sorted_corona_dec = sort(corona_dec, decreasing = TRUE)
print(names(sorted_corona_dec[1:10]))

influenza_dec = decay(influenza_ppi, vids = V(influenza_ppi), mode = "all",
                      weights = NULL, decay = 0.5)

sorted_influenza_dec = sort(influenza_dec, decreasing = TRUE)
print(names(sorted_influenza_dec[1:10]))

# Diffusion.degree-----------------------------------------------------------------------------------

corona_dif = diffusion.degree(corona_ppi, vids = V(corona_ppi), mode = "all",
                              loops = FALSE, lambda = 1)

sorted_corona_dif = sort(corona_dif, decreasing = TRUE)
print(names(sorted_corona_dif[1:10]))

influenza_dif = diffusion.degree(influenza_ppi, vids = V(influenza_ppi), mode = "all",
                                 loops = FALSE, lambda = 1)

sorted_influenza_dif = sort(influenza_dif, decreasing = TRUE)
print(names(sorted_influenza_dif[1:10]))

# Geodesic K-path------------------------------------------------------------------------------------

corona_geo = geokpath(corona_ppi, vids = V(corona_ppi), mode = "all", weights = NULL, k = 3)

sorted_corona_geo = sort(corona_geo, decreasing = TRUE)
print(names(sorted_corona_geo[1:10]))

influenza_geo = geokpath(influenza_ppi, vids = V(influenza_ppi), mode = "all", weights = NULL, k = 3)

sorted_influenza_geo = sort(influenza_geo, decreasing = TRUE)
print(names(sorted_influenza_geo[1:10]))

