# pearson correlation Between Degree based, Eigen based, and Neighborhood based centralities in SARS-CoV-2 PPI 

library(readr)
library("ggpubr")
library("ggplot2")

# Reading SARS-CoV-2 net

corona_edges = read.csv(file = ".datasets/corona_edges.csv",
                        header = TRUE)
corona_nodes = read.csv(file = ".datasets/corona_nodes.csv",
                        header = TRUE)
# Reading Scaled cetrality values
corona_scaled = read.csv(file = ".outputs/corona_scaled.csv", 
                         header = TRUE)

# correlation Between centralities: Kleinberg's authority centrality  and Degree Centrality
cor_12 = cor(corona_scaled[,21], corona_scaled[,3], method = "pearson")
cor_12 = round(cor_12,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_deg", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Degree")

# correlation Between centralities: Kleinberg's authority centrality  and Diffusion Degree
cor_13 = cor(corona_scaled[,2], corona_scaled[,8], method = "pearson")
cor_13 = round(cor_13,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_dif", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Diffusion")

# correlation Between centralities: Kleinberg's authority centrality  and Kleinberg's hub centrality 
cor_14 = cor(corona_scaled[,21], corona_scaled[,22], method = "pearson")
cor_14 = round(cor_14,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_hub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "hub")

# correlation Between centralities: Kleinberg's authority centrality  and Leverage Centrality
cor_15 = cor(corona_scaled[,21], corona_scaled[,11], method = "pearson")
cor_15 = round(cor_15,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Leverage")

# correlation Between centralities: Kleinberg's authority centrality  and Lobby Index 
cor_16 = cor(corona_scaled[,21], corona_scaled[,13], method = "pearson")
cor_16 = round(cor_16,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Lobby")


# correlation Between centralities: Kleinberg's authority centrality  and Eigenvector Centrality 
cor_17 = cor(corona_scaled[,21], corona_scaled[,16], method = "pearson")
cor_17 = round(cor_17,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "eigenvec")

# correlation Between centralities: Kleinberg's authority centrality  and Laplacian Centrality
cor_18 = cor(corona_scaled[,21], corona_scaled[,10], method = "pearson")
cor_18 = round(cor_18,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Laplac")

# correlation Between centralities: Kleinberg's authority centrality  and Subgraph centrality 
cor_19 = cor(corona_scaled[,21], corona_scaled[,17], method = "pearson")
cor_19 = round(cor_19,2)
ggscatter(corona_scaled, x = "corona_auth", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "sub")

# correlation Between centralities: Degree Centrality and  Diffusion Degree
cor_23 = cor(corona_scaled[,20], corona_scaled[,8], method = "pearson")
cor_23 = round(cor_23,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_dif", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Diffusion")

# correlation Between centralities: Degree Centrality and  Kleinberg's hub centrality 
cor_24 = cor(corona_scaled[,20], corona_scaled[,22], method = "pearson")
cor_24 = round(cor_24,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_hub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "hub")

# correlation Between centralities: Degree Centrality and  Leverage Centrality
cor_25 = cor(corona_scaled[,20], corona_scaled[,11], method = "pearson")
cor_25 = round(cor_25,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Leverage")

# correlation Between centralities: Degree Centrality and  Lobby Index 
cor_26 = cor(corona_scaled[,20], corona_scaled[,13], method = "pearson")
cor_26 = round(cor_26,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Lobby")

# correlation Between centralities: Degree Centrality and  Eigenvector Centrality 
cor_27 = cor(corona_scaled[,20], corona_scaled[,16], method = "pearson")
cor_27 = round(cor_27,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "eigenvec")

# correlation Between centralities: Degree Centrality and  Laplacian Centrality
cor_28 = cor(corona_scaled[,20], corona_scaled[,10], method = "pearson")
cor_28 = round(cor_28,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Laplac")

# correlation Between centralities: Degree Centrality and  Subgraph centrality 
cor_29 = cor(corona_scaled[,20], corona_scaled[,17], method = "pearson")
cor_29 = round(cor_29,2)
ggscatter(corona_scaled, x = "corona_deg", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "sub")

# correlation Between centralities:  Diffusion Degree and Kleinberg's hub centrality 
cor_34 = cor(corona_scaled[,8], corona_scaled[,22], method = "pearson")
cor_34 = round(cor_34,2)
ggscatter(corona_scaled, x = "corona_dif", y = "corona_hub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "hub")


# correlation Between centralities:  Diffusion Degree and Leverage Centrality
cor_35 = cor(corona_scaled[,8], corona_scaled[,11], method = "pearson")
cor_35 = round(cor_35,2)
ggscatter(corona_scaled, x = "corona_dif", y = "corona_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "Leverage")

# correlation Between centralities:  Diffusion Degree and Lobby Index 
cor_36 = cor(corona_scaled[,8], corona_scaled[,13], method = "pearson")
cor_36 = round(cor_36,2)
ggscatter(corona_scaled, x = "corona_dif", y = "corona_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "Lobby")

# correlation Between centralities:  Diffusion Degree and Eigenvector Centrality 
cor_37 = cor(corona_scaled[,8], corona_scaled[,16], method = "pearson")
cor_37 = round(cor_37,2)
ggscatter(corona_scaled, x = "corona_dif", y = "corona_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "eigenvec")

# correlation Between centralities:  Diffusion Degree and Laplacian Centrality
cor_38 = cor(corona_scaled[,8], corona_scaled[,10], method = "pearson")
cor_38 = round(cor_38,2)
ggscatter(corona_scaled, x = "corona_dif", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "Laplac")

# correlation Between centralities:  Diffusion Degree and Subgraph centrality 
cor_39 = cor(corona_scaled[,8], corona_scaled[,17], method = "pearson")
cor_39 = round(cor_39,2)
ggscatter(corona_scaled, x = "corona_dif", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "sub")

# correlation Between centralities:   Kleinberg's hub centrality  and Leverage Centrality 
cor_45 = cor(corona_scaled[,22], corona_scaled[,11], method = "pearson")
cor_45 = round(cor_45,2)
ggscatter(corona_scaled, x = "corona_hub", y = "corona_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "Leverage")

# correlation Between centralities:  Kleinberg's hub centrality  and Lobby Index 
cor_46 = cor(corona_scaled[,22], corona_scaled[,13], method = "pearson")
cor_46 = round(cor_46,2)
ggscatter(corona_scaled, x = "corona_hub", y = "corona_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "Lobby")

# correlation Between centralities:  Kleinberg's hub centrality  and Eigenvector Centrality 
cor_47 = cor(corona_scaled[,22], corona_scaled[,16], method = "pearson")
cor_47 = round(cor_47,2)
ggscatter(corona_scaled, x = "corona_hub", y = "corona_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "eigenvec")

# correlation Between centralities:  Kleinberg's hub centrality  and Laplacian Centrality
cor_48 = cor(corona_scaled[,22], corona_scaled[,10], method = "pearson")
cor_48 = round(cor_48,2)
ggscatter(corona_scaled, x = "corona_hub", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "Laplac")

# correlation Between centralities:  Kleinberg's hub centrality  and Subgraph centrality 
cor_49 = cor(corona_scaled[,22], corona_scaled[,17], method = "pearson")
cor_49 = round(cor_49,2)
ggscatter(corona_scaled, x = "corona_hub", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "sub")

# correlation Between centralities: Leverage Centrality and Lobby Index 
cor_56 = cor(corona_scaled[,11], corona_scaled[,13], method = "pearson")
cor_56 = round(cor_56,2)
ggscatter(corona_scaled, x = "corona_lev", y = "corona_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "Lobby")

# correlation Between centralities: Leverage Centrality and Eigenvector Centrality 
cor_57 = cor(corona_scaled[,11], corona_scaled[,16], method = "pearson")
cor_57 = round(cor_57,2)
ggscatter(corona_scaled, x = "corona_lev", y = "corona_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "eigenvec")

# correlation Between centralities: Leverage Centrality and Laplacian Centrality
cor_58 = cor(corona_scaled[,11], corona_scaled[,10], method = "pearson")
cor_58 = round(cor_58,2)
ggscatter(corona_scaled, x = "corona_lev", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "Laplac")

# correlation Between centralities: Leverage Centrality and Subgraph centrality 
cor_59 = cor(corona_scaled[,11], corona_scaled[,17], method = "pearson")
cor_59 = round(cor_59,2)
ggscatter(corona_scaled, x = "corona_lev", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "sub")

# correlation Between centralities: Lobby Index  and Eigenvector Centrality 
cor_67 = cor(corona_scaled[,13], corona_scaled[,16], method = "pearson")
cor_67 = round(cor_67,2)
ggscatter(corona_scaled, x = "corona_lob", y = "corona_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lobby", ylab = "eigenvec")

# correlation Between centralities: Lobby Index  and Laplacian Centrality
cor_68 = cor(corona_scaled[,13], corona_scaled[,10], method = "pearson")
cor_68 = round(cor_68,2)
ggscatter(corona_scaled, x = "corona_lob", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lobby", ylab = "Laplac")

# correlation Between centralities: Lobby Index  and Subgraph centrality 
cor_69 = cor(corona_scaled[,13], corona_scaled[,17], method = "pearson")
cor_69 = round(cor_69,2)
ggscatter(corona_scaled, x = "corona_lob", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lobby", ylab = "sub")

# correlation Between centralities:  Eigenvector Centrality  and Laplacian Centrality
cor_78 = cor(corona_scaled[,16], corona_scaled[,10], method = "pearson")
cor_78 = round(cor_78,2)
ggscatter(corona_scaled, x = "corona_eig", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "eigenvec", ylab = "Laplac")

# correlation Between centralities:  Eigenvector Centrality  and Subgraph centrality 
cor_79 = cor(corona_scaled[,16], corona_scaled[,17], method = "pearson")
cor_79 = round(cor_79,2)
ggscatter(corona_scaled, x = "corona_eig", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "eigenvec", ylab = "sub")

# correlation Between centralities: Laplacian Centrality and Subgraph centrality 
cor_89 = cor(corona_scaled[,10], corona_scaled[,17], method = "pearson")
cor_89 = round(cor_89,2)
ggscatter(corona_scaled, x = "corona_la", y = "corona_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Laplac", ylab = "sub")