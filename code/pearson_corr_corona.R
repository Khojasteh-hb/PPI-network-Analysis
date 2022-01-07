#"pearson" correlation-based distance measures of centrality measures in SARS-CoV-2

library(factoextra)
library(clustertend)
library(clValid)

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

df = as.data.frame(t(corona_scaled[,-1]))

# Correlation-based distance method
res.dist <- get_dist(df, method = "pearson")

dev.new(width=5.5, height=5, unit="cm")

# Visualize the dissimilarity matrix
fviz_dist(res.dist, lab_size = 12)+
  labs(title = "SARS-CoV-2")
