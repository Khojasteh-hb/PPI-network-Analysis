# the most appropriate clustering method among hierarchical, k-means, and PAM

library(factoextra)
library(clustertend)
library(clValid)

# Reading Scaled centrality values

influenza_scaled = read.csv(file = ".outputs/influenza_scaled.csv", 
                         header = TRUE)
#influenza_dt = read.csv(file = ".outputs/influenza_dt.csv", 
#                     header = TRUE)

# Rename column names
names(influenza_scaled)[2] <- "Aver.Dis"
names(influenza_scaled)[3] <- "Bary"
names(influenza_scaled)[4] <- "Freeman"
names(influenza_scaled)[5] <- "Latora"
names(influenza_scaled)[6] <- "Residual"
names(influenza_scaled)[7] <- "Decay"
names(influenza_scaled)[8] <- "Diffusion"
names(influenza_scaled)[9] <- "Geodesic"
names(influenza_scaled)[10] <- "Laplac"
names(influenza_scaled)[11] <- "Leverage"
names(influenza_scaled)[12] <- "Lin"
names(influenza_scaled)[13] <- "Lobby"
names(influenza_scaled)[14] <- "Markov"
names(influenza_scaled)[15] <- "Radiality"
names(influenza_scaled)[16] <- "Eigenvec"
names(influenza_scaled)[17] <- "sub"
names(influenza_scaled)[18] <- "Short.Paths"
names(influenza_scaled)[19] <- "Eccentr"
names(influenza_scaled)[20] <- "Degree"
names(influenza_scaled)[21] <- "Auth"
names(influenza_scaled)[22] <- "hub"

set.seed(123)
df = as.data.frame(t(influenza_scaled[,-1]))

# Compute Hopkins statistic for (H1N1)influenza centrality dataset
res <- get_clust_tendency(df, n = 20, graph = TRUE)
print(res$hopkins_stat)

# Compute k-means
res.km <- eclust(df, "kmeans", nstart = 25)

# Gap statistic plot
#fviz_gap_stat(res.km$gap_stat)

# Silhouette plot
#fviz_silhouette(res.km, label = TRUE)+
#  labs(title = "(H1N1) influenza")

# Compute pam
#res.pam <- eclust(df, "pam", nstart = 25)

# Gap statistic plot
#fviz_gap_stat(res.pam$gap_stat)

# Silhouette plot
#fviz_silhouette(res.pam, label = TRUE)

# Enhanced hierarchical clustering
res.hc <- eclust(df, "hclust", nstart = 25) 

dev.new(width=6, height=4, unit="cm")

# dendrogam
#fviz_dend(res.hc, rect = TRUE,  color_labels_by_k = FALSE, cex = 1) + 
#  labs(title = "(H1N1) influenza")

# silhouette plot
#fviz_silhouette(res.hc, label = TRUE) 

