library(factoextra)
library(FactoMineR)
library(corrplot)
library(readr)
library(Matrix)

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

res.pca <- PCA(corona_scaled[,-1], scale.unit = FALSE, ncp = 2, graph = FALSE)

# Graph of variables: default plot
#fviz_pca_biplot(res.pca, geom = "point", geom.var = "arrow", col.var = "blue", title = "SARS-CoV-2")

contrib_corona = round( res.pca$var$contrib, 2)
#write.csv(contrib_corona, ".outputs/contrib_corona.csv", row.names = TRUE)
                
# Contributions of variables to PC1
fviz_contrib(res.pca, choice = "var", axes = 1, top = 10)

# Contributions of variables to PC2
fviz_contrib(res.pca, choice = "var", axes = 2, top = 10)      

#dev.new(width=7, height=4, unit="cm")

# Variable contributions on axes 1 + 2
fviz_contrib(res.pca, choice="var", axes = 1:2)+
  labs(title = "SARS-CoV-2")
