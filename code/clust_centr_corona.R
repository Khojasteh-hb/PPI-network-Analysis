# the most appropriate clustering method among hierarchical, k-means, and PAM

library(factoextra)

# Reading Scaled centrality values
corona_scaled = read.csv(file = ".outputs/corona_scaled.csv", 
                         header = TRUE)

# Rename column names
names(corona_scaled)[2] <- "Aver.Dis"
names(corona_scaled)[3] <- "Bary"
names(corona_scaled)[4] <- "Freeman"
names(corona_scaled)[5] <- "Latora"
names(corona_scaled)[6] <- "Residual"
names(corona_scaled)[7] <- "Decay"
names(corona_scaled)[8] <- "Diffusion"
names(corona_scaled)[9] <- "Geodesic"
names(corona_scaled)[10] <- "Laplac"
names(corona_scaled)[11] <- "Leverage"
names(corona_scaled)[12] <- "Lin"
names(corona_scaled)[13] <- "Lobby"
names(corona_scaled)[14] <- "Markov"
names(corona_scaled)[15] <- "Radiality"
names(corona_scaled)[16] <- "Eigenvec"
names(corona_scaled)[17] <- "sub"
names(corona_scaled)[18] <- "Short.Paths"
names(corona_scaled)[19] <- "Eccentr"
names(corona_scaled)[20] <- "Degree"
names(corona_scaled)[21] <- "Auth"
names(corona_scaled)[22] <- "hub"

set.seed(123)
df = as.data.frame(t(corona_scaled[,-1]))

# Compute Hopkins statistic for SARS-CoV-2 centrality dataset
res <- get_clust_tendency(df, n = 20, graph = TRUE)
print(res$hopkins_stat)

# Compute k-means
#res.km <- eclust(df, "kmeans",hc_method = "ward.D2", nstart = 25)

# Gap statistic plot
#fviz_gap_stat(res.km$gap_stat)

# Silhouette plot
#fviz_silhouette(res.km, label = TRUE)+
#  labs(title = "SARS-CoV-2")


# Compute pam
#res.pam <- eclust(df, "pam", hc_method = "ward.D2", nstart = 25)

# Gap statistic plot
#fviz_gap_stat(res.pam$gap_stat)

# Silhouette plot
#fviz_silhouette(res.pam, label = TRUE)


# Enhanced hierarchical clustering
res.hc <- eclust(df, "hclust", hc_method = "ward.D2", nstart = 25) 

# dendrogam
#fviz_dend(res.hc, rect = TRUE,  color_labels_by_k = FALSE, cex = 1)+ 
#  labs(title = "SARS-CoV-2")

# silhouette plot
#fviz_silhouette(res.hc, label = TRUE)


