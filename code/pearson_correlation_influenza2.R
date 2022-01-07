# pearson correlation Between Degree based, Eigen based, and Neighborhood based centralities in (H1N1) influenza  PPI 

library(readr)
library("ggpubr")
library("ggplot2")

# Reading Scaled cetrality values

influenza_scaled = read.csv(file = ".outputs/influenza_scaled.csv", 
                         header = TRUE)

# correlation Between centralities: Kleinberg's authority centrality  and Degree Centrality
inf_12 = cor(influenza_scaled[,21], influenza_scaled[,3], method = "pearson")
inf_12 = round(inf_12,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_deg", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Degree")

# correlation Between centralities: Kleinberg's authority centrality  and Diffusion Degree
inf_13 = cor(influenza_scaled[,2], influenza_scaled[,8], method = "pearson")
inf_13 = round(inf_13,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_dif", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Diffusion")

# correlation Between centralities: Kleinberg's authority centrality  and Kleinberg's hub centrality 
inf_14 = cor(influenza_scaled[,21], influenza_scaled[,22], method = "pearson")
inf_14 = round(inf_14,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_hub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "hub")

# correlation Between centralities: Kleinberg's authority centrality  and Leverage Centrality
inf_15 = cor(influenza_scaled[,21], influenza_scaled[,11], method = "pearson")
inf_15 = round(inf_15,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Leverage")

# correlation Between centralities: Kleinberg's authority centrality  and Lobby Index 
inf_16 = cor(influenza_scaled[,21], influenza_scaled[,13], method = "pearson")
inf_16 = round(inf_16,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Lobby")


# correlation Between centralities: Kleinberg's authority centrality  and Eigenvector Centrality 
inf_17 = cor(influenza_scaled[,21], influenza_scaled[,16], method = "pearson")
inf_17 = round(inf_17,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "eigenvec")

# correlation Between centralities: Kleinberg's authority centrality  and Laplacian Centrality
inf_18 = cor(influenza_scaled[,21], influenza_scaled[,10], method = "pearson")
inf_18 = round(inf_18,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "Laplac")

# correlation Between centralities: Kleinberg's authority centrality  and Subgraph centrality 
inf_19 = cor(influenza_scaled[,21], influenza_scaled[,17], method = "pearson")
inf_19 = round(inf_19,2)
ggscatter(influenza_scaled, x = "influenza_auth", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Auth", ylab = "sub")

# correlation Between centralities: Degree Centrality and  Diffusion Degree
inf_23 = cor(influenza_scaled[,20], influenza_scaled[,8], method = "pearson")
inf_23 = round(inf_23,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_dif", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Diffusion")

# correlation Between centralities: Degree Centrality and  Kleinberg's hub centrality 
inf_24 = cor(influenza_scaled[,20], influenza_scaled[,22], method = "pearson")
inf_24 = round(inf_24,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_hub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "hub")

# correlation Between centralities: Degree Centrality and  Leverage Centrality
inf_25 = cor(influenza_scaled[,20], influenza_scaled[,11], method = "pearson")
inf_25 = round(inf_25,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Leverage")

# correlation Between centralities: Degree Centrality and  Lobby Index 
inf_26 = cor(influenza_scaled[,20], influenza_scaled[,13], method = "pearson")
inf_26 = round(inf_26,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Lobby")

# correlation Between centralities: Degree Centrality and  Eigenvector Centrality 
inf_27 = cor(influenza_scaled[,20], influenza_scaled[,16], method = "pearson")
inf_27 = round(inf_27,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "eigenvec")

# correlation Between centralities: Degree Centrality and  Laplacian Centrality
inf_28 = cor(influenza_scaled[,20], influenza_scaled[,10], method = "pearson")
inf_28 = round(inf_28,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "Laplac")

# correlation Between centralities: Degree Centrality and  Subgraph centrality 
inf_29 = cor(influenza_scaled[,20], influenza_scaled[,17], method = "pearson")
inf_29 = round(inf_29,2)
ggscatter(influenza_scaled, x = "influenza_deg", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Degree", ylab = "sub")

# correlation Between centralities:  Diffusion Degree and Kleinberg's hub centrality 
inf_34 = cor(influenza_scaled[,8], influenza_scaled[,22], method = "pearson")
inf_34 = round(inf_34,2)
ggscatter(influenza_scaled, x = "influenza_dif", y = "influenza_hub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "hub")


# correlation Between centralities:  Diffusion Degree and Leverage Centrality
inf_35 = cor(influenza_scaled[,8], influenza_scaled[,11], method = "pearson")
inf_35 = round(inf_35,2)
ggscatter(influenza_scaled, x = "influenza_dif", y = "influenza_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "Leverage")

# correlation Between centralities:  Diffusion Degree and Lobby Index 
inf_36 = cor(influenza_scaled[,8], influenza_scaled[,13], method = "pearson")
inf_36 = round(inf_36,2)
ggscatter(influenza_scaled, x = "influenza_dif", y = "influenza_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "Lobby")

# correlation Between centralities:  Diffusion Degree and Eigenvector Centrality 
inf_37 = cor(influenza_scaled[,8], influenza_scaled[,16], method = "pearson")
inf_37 = round(inf_37,2)
ggscatter(influenza_scaled, x = "influenza_dif", y = "influenza_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "eigenvec")

# correlation Between centralities:  Diffusion Degree and Laplacian Centrality
inf_38 = cor(influenza_scaled[,8], influenza_scaled[,10], method = "pearson")
inf_38 = round(inf_38,2)
ggscatter(influenza_scaled, x = "influenza_dif", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "Laplac")

# correlation Between centralities:  Diffusion Degree and Subgraph centrality 
inf_39 = cor(influenza_scaled[,8], influenza_scaled[,17], method = "pearson")
inf_39 = round(inf_39,2)
ggscatter(influenza_scaled, x = "influenza_dif", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Diffusion", ylab = "sub")

# correlation Between centralities:   Kleinberg's hub centrality  and Leverage Centrality 
inf_45 = cor(influenza_scaled[,22], influenza_scaled[,11], method = "pearson")
inf_45 = round(inf_45,2)
ggscatter(influenza_scaled, x = "influenza_hub", y = "influenza_lev", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "Leverage")

# correlation Between centralities:  Kleinberg's hub centrality  and Lobby Index 
inf_46 = cor(influenza_scaled[,22], influenza_scaled[,13], method = "pearson")
inf_46 = round(inf_46,2)
ggscatter(influenza_scaled, x = "influenza_hub", y = "influenza_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "Lobby")

# correlation Between centralities:  Kleinberg's hub centrality  and Eigenvector Centrality 
inf_47 = cor(influenza_scaled[,22], influenza_scaled[,16], method = "pearson")
inf_47 = round(inf_47,2)
ggscatter(influenza_scaled, x = "influenza_hub", y = "influenza_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "eigenvec")

# correlation Between centralities:  Kleinberg's hub centrality  and Laplacian Centrality
inf_48 = cor(influenza_scaled[,22], influenza_scaled[,10], method = "pearson")
inf_48 = round(inf_48,2)
ggscatter(influenza_scaled, x = "influenza_hub", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "Laplac")

# correlation Between centralities:  Kleinberg's hub centrality  and Subgraph centrality 
inf_49 = cor(influenza_scaled[,22], influenza_scaled[,17], method = "pearson")
inf_49 = round(inf_49,2)
ggscatter(influenza_scaled, x = "influenza_hub", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "hub", ylab = "sub")

# correlation Between centralities: Leverage Centrality and Lobby Index 
inf_56 = cor(influenza_scaled[,11], influenza_scaled[,13], method = "pearson")
inf_56 = round(inf_56,2)
ggscatter(influenza_scaled, x = "influenza_lev", y = "influenza_lob", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "Lobby")

# correlation Between centralities: Leverage Centrality and Eigenvector Centrality 
inf_57 = cor(influenza_scaled[,11], influenza_scaled[,16], method = "pearson")
inf_57 = round(inf_57,2)
ggscatter(influenza_scaled, x = "influenza_lev", y = "influenza_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "eigenvec")

# correlation Between centralities: Leverage Centrality and Laplacian Centrality
inf_58 = cor(influenza_scaled[,11], influenza_scaled[,10], method = "pearson")
inf_58 = round(inf_58,2)
ggscatter(influenza_scaled, x = "influenza_lev", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "Laplac")

# correlation Between centralities: Leverage Centrality and Subgraph centrality 
inf_59 = cor(influenza_scaled[,11], influenza_scaled[,17], method = "pearson")
inf_59 = round(inf_59,2)
ggscatter(influenza_scaled, x = "influenza_lev", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Leverage", ylab = "sub")

# correlation Between centralities: Lobby Index  and Eigenvector Centrality 
inf_67 = cor(influenza_scaled[,13], influenza_scaled[,16], method = "pearson")
inf_67 = round(inf_67,2)
ggscatter(influenza_scaled, x = "influenza_lob", y = "influenza_eig", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lobby", ylab = "eigenvec")

# correlation Between centralities: Lobby Index  and Laplacian Centrality
inf_68 = cor(influenza_scaled[,13], influenza_scaled[,10], method = "pearson")
inf_68 = round(inf_68,2)
ggscatter(influenza_scaled, x = "influenza_lob", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lobby", ylab = "Laplac")

# correlation Between centralities: Lobby Index  and Subgraph centrality 
inf_69 = cor(influenza_scaled[,13], influenza_scaled[,17], method = "pearson")
inf_69 = round(inf_69,2)
ggscatter(influenza_scaled, x = "influenza_lob", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lobby", ylab = "sub")

# correlation Between centralities:  Eigenvector Centrality  and Laplacian Centrality
inf_78 = cor(influenza_scaled[,16], influenza_scaled[,10], method = "pearson")
inf_78 = round(inf_78,2)
ggscatter(influenza_scaled, x = "influenza_eig", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "eigenvec", ylab = "Laplac")

# correlation Between centralities:  Eigenvector Centrality  and Subgraph centrality 
inf_79 = cor(influenza_scaled[,16], influenza_scaled[,17], method = "pearson")
inf_79 = round(inf_79,2)
ggscatter(influenza_scaled, x = "influenza_eig", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "eigenvec", ylab = "sub")

# correlation Between centralities: Laplacian Centrality and Subgraph centrality 
inf_89 = cor(influenza_scaled[,10], influenza_scaled[,17], method = "pearson")
inf_89 = round(inf_89,2)
ggscatter(influenza_scaled, x = "influenza_la", y = "influenza_sub", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Laplac", ylab = "sub")