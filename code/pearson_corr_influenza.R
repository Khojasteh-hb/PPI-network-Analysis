#"pearson" correlation-based distance measures of centrality measures in (H1N1)influenza 

library(factoextra)
library(clustertend)
library(clValid)

# Reading Scaled centrality values

influenza_scaled = read.csv(file = ".outputs/influenza_scaled.csv", 
                         header = TRUE)

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

df = as.data.frame(t(influenza_scaled[,-1]))

# Correlation-based distance method
res.dist <- get_dist(df, method = "pearson")

dev.new(width=5.5, height=5, unit="cm")

# Visualize the dissimilarity matrix
fviz_dist(res.dist, lab_size = 12)+
  labs(title = "(H1N1) influenza")