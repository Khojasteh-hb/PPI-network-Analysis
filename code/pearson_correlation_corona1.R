# pearson correlation Between Distance based centralities in SARS-CoV-2 PPI 

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

# correlation Between centralities: Average distance and Bary center
cor_12 = cor(corona_scaled[,2], corona_scaled[,3], method = "pearson")
cor_12 = round(cor_12,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_bar", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Bary")

# correlation Between centralities: Average distance and Decay Centrality
cor_13 = cor(corona_scaled[,2], corona_scaled[,7], method = "pearson")
cor_13 = round(cor_13,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_dec", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Decay")

# correlation Between centralities: Average distance and Eccentricity
cor_14 = cor(corona_scaled[,2], corona_scaled[,19], method = "pearson")
cor_14 = round(cor_14,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_ecc", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Eccentr")

# correlation Between centralities: Average distance and Closeness Centrality(Freeman)
cor_15 = cor(corona_scaled[,2], corona_scaled[,4], method = "pearson")
cor_15 = round(cor_15,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Freeman")

# correlation Between centralities: Average distance and Closeness Centrality(Latora)
cor_16 = cor(corona_scaled[,2], corona_scaled[,5], method = "pearson")
cor_16 = round(cor_16,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_lat", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Latora")


# correlation Between centralities: Average distance and Lin Centrality
cor_17 = cor(corona_scaled[,2], corona_scaled[,12], method = "pearson")
cor_17 = round(cor_17,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Lin")

# correlation Between centralities: Average distance and Radiality Centrality
cor_18 = cor(corona_scaled[,2], corona_scaled[,15], method = "pearson")
cor_18 = round(cor_18,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Radiality")

# correlation Between centralities: Average distance and Residual Closeness centrality
cor_19 = cor(corona_scaled[,2], corona_scaled[,6], method = "pearson")
cor_19 = round(cor_19,2)
ggscatter(corona_scaled, x = "corona_av", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Residual")

# correlation Between centralities: Bary center and  Decay Centrality
cor_23 = cor(corona_scaled[,3], corona_scaled[,7], method = "pearson")
cor_23 = round(cor_23,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_dec", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Decay")

# correlation Between centralities: Bary center and  Eccentricity
cor_24 = cor(corona_scaled[,3], corona_scaled[,19], method = "pearson")
cor_24 = round(cor_24,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_ecc", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Eccentr")

# correlation Between centralities: Bary center and  Closeness Centrality(Freeman)
cor_25 = cor(corona_scaled[,3], corona_scaled[,4], method = "pearson")
cor_25 = round(cor_25,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Freeman")

# correlation Between centralities: Bary center and  Closeness Centrality(Latora)
cor_26 = cor(corona_scaled[,3], corona_scaled[,5], method = "pearson")
cor_26 = round(cor_26,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Latora")

# correlation Between centralities: Bary center and  Lin Centrality
cor_27 = cor(corona_scaled[,3], corona_scaled[,12], method = "pearson")
cor_27 = round(cor_27,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Lin")

# correlation Between centralities: Bary center and  Radiality Centrality
cor_28 = cor(corona_scaled[,3], corona_scaled[,15], method = "pearson")
cor_28 = round(cor_28,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Radiality")

# correlation Between centralities: Bary center and  Residual Closeness centrality
cor_29 = cor(corona_scaled[,3], corona_scaled[,6], method = "pearson")
cor_29 = round(cor_29,2)
ggscatter(corona_scaled, x = "corona_bar", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Residual")

# correlation Between centralities:  Decay Centrality and Eccentricity
cor_34 = cor(corona_scaled[,7], corona_scaled[,19], method = "pearson")
cor_34 = round(cor_34,2)
ggscatter(corona_scaled, x = "corona_dec", y = "corona_ecc", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Eccentr")


# correlation Between centralities:  Decay Centrality and Closeness Centrality(Freeman)
cor_35 = cor(corona_scaled[,7], corona_scaled[,4], method = "pearson")
cor_35 = round(cor_35,2)
ggscatter(corona_scaled, x = "corona_dec", y = "corona_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Freeman")

# correlation Between centralities:  Decay Centrality and Closeness Centrality(Latora)
cor_36 = cor(corona_scaled[,7], corona_scaled[,5], method = "pearson")
cor_36 = round(cor_36,2)
ggscatter(corona_scaled, x = "corona_dec", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Latora")

# correlation Between centralities:  Decay Centrality and Lin Centrality
cor_37 = cor(corona_scaled[,7], corona_scaled[,12], method = "pearson")
cor_37 = round(cor_37,2)
ggscatter(corona_scaled, x = "corona_dec", y = "corona_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Lin")

# correlation Between centralities:  Decay Centrality and Radiality Centrality
cor_38 = cor(corona_scaled[,7], corona_scaled[,15], method = "pearson")
cor_38 = round(cor_38,2)
ggscatter(corona_scaled, x = "corona_dec", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Radiality")

# correlation Between centralities:  Decay Centrality and Residual Closeness centrality
cor_39 = cor(corona_scaled[,7], corona_scaled[,6], method = "pearson")
cor_39 = round(cor_39,2)
ggscatter(corona_scaled, x = "corona_dec", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Residual")

# correlation Between centralities:   Eccentricity and Closeness Centrality(Freeman) 
cor_45 = cor(corona_scaled[,19], corona_scaled[,4], method = "pearson")
cor_45 = round(cor_45,2)
ggscatter(corona_scaled, x = "corona_ecc", y = "corona_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Freeman")

# correlation Between centralities:  Eccentricity and Closeness Centrality(Latora)
cor_46 = cor(corona_scaled[,19], corona_scaled[,5], method = "pearson")
cor_46 = round(cor_46,2)
ggscatter(corona_scaled, x = "corona_ecc", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Latora")

# correlation Between centralities:  Eccentricity and Lin Centrality
cor_47 = cor(corona_scaled[,19], corona_scaled[,12], method = "pearson")
cor_47 = round(cor_47,2)
ggscatter(corona_scaled, x = "corona_ecc", y = "corona_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Lin")

# correlation Between centralities:  Eccentricity and Radiality Centrality
cor_48 = cor(corona_scaled[,19], corona_scaled[,15], method = "pearson")
cor_48 = round(cor_48,2)
ggscatter(corona_scaled, x = "corona_ecc", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Radiality")

# correlation Between centralities:  Eccentricity and Residual Closeness centrality
cor_49 = cor(corona_scaled[,19], corona_scaled[,6], method = "pearson")
cor_49 = round(cor_49,2)
ggscatter(corona_scaled, x = "corona_ecc", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Residual")

# correlation Between centralities: Closeness Centrality(Freeman) and Closeness Centrality(Latora)
cor_56 = cor(corona_scaled[,4], corona_scaled[,5], method = "pearson")
cor_56 = round(cor_56,2)
ggscatter(corona_scaled, x = "corona_clo", y = "corona_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Latora")

# correlation Between centralities: Closeness Centrality(Freeman) and Lin Centrality
cor_57 = cor(corona_scaled[,4], corona_scaled[,12], method = "pearson")
cor_57 = round(cor_57,2)
ggscatter(corona_scaled, x = "corona_clo", y = "corona_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Lin")

# correlation Between centralities: Closeness Centrality(Freeman) and Radiality Centrality
cor_58 = cor(corona_scaled[,4], corona_scaled[,15], method = "pearson")
cor_58 = round(cor_58,2)
ggscatter(corona_scaled, x = "corona_clo", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Radiality")

# correlation Between centralities: Closeness Centrality(Freeman) and Residual Closeness centrality
cor_59 = cor(corona_scaled[,4], corona_scaled[,6], method = "pearson")
cor_59 = round(cor_59,2)
ggscatter(corona_scaled, x = "corona_clo", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Residual")

# correlation Between centralities: Closeness Centrality(Latora) and Lin Centrality
cor_67 = cor(corona_scaled[,5], corona_scaled[,12], method = "pearson")
cor_67 = round(cor_67,2)
ggscatter(corona_scaled, x = "corona_la", y = "corona_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Latora", ylab = "Lin")

# correlation Between centralities: Closeness Centrality(Latora) and Radiality Centrality
cor_68 = cor(corona_scaled[,5], corona_scaled[,15], method = "pearson")
cor_68 = round(cor_68,2)
ggscatter(corona_scaled, x = "corona_la", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Latora", ylab = "Radiality")

# correlation Between centralities: Closeness Centrality(Latora) and Residual Closeness centrality
cor_69 = cor(corona_scaled[,5], corona_scaled[,6], method = "pearson")
cor_69 = round(cor_69,2)
ggscatter(corona_scaled, x = "corona_la", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Latora", ylab = "Residual")

# correlation Between centralities:  Lin Centrality and Radiality Centrality
cor_78 = cor(corona_scaled[,12], corona_scaled[,15], method = "pearson")
cor_78 = round(cor_78,2)
ggscatter(corona_scaled, x = "corona_lin", y = "corona_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lin", ylab = "Radiality")

# correlation Between centralities:  Lin Centrality and Residual Closeness centrality
cor_79 = cor(corona_scaled[,12], corona_scaled[,6], method = "pearson")
cor_79 = round(cor_79,2)
ggscatter(corona_scaled, x = "corona_lin", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lin", ylab = "Residual")

# correlation Between centralities: Radiality Centrality and Residual Closeness centrality
cor_89 = cor(corona_scaled[,15], corona_scaled[,6], method = "pearson")
cor_89 = round(cor_89,2)
ggscatter(corona_scaled, x = "corona_rad", y = "corona_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Radiality", ylab = "Residual")