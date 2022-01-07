library(factoextra)
library(FactoMineR)
library(readr)
library(Matrix)

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

res.pca <- PCA(influenza_scaled[,-1], scale.unit = FALSE, ncp = 2, graph = FALSE)

# Graph of variables: default plot
#fviz_pca_biplot(res.pca, geom = "point", geom.var = "arrow", col.var = "blue", 
#                title = "(H1N1)influenza")

contrib_influenza = round( res.pca$var$contrib, 2)
#write.csv(contrib_influenza, ".outputs/contrib_influenza.csv", row.names = TRUE)

# Contributions of variables to PC1
fviz_contrib(res.pca, choice = "var", axes = 1, top = 10)

# Contributions of variables to PC2
fviz_contrib(res.pca, choice = "var", axes = 2, top = 10)  

#dev.new(width=7, height=4, unit="cm")

# Variable contributions on axes 1 + 2
fviz_contrib(res.pca, choice="var", axes = 1:2)+
  labs(title = "(H1N1) influenza")
