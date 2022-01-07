# pearson correlation Between Distance based centralities in (H1N1) influenza PPI 

library(readr)
library("ggpubr")
library("ggplot2")

# Reading Scaled cetrality values

influenza_scaled = read.csv(file = ".outputs/influenza_scaled.csv", 
                         header = TRUE)

# correlation Between centralities: Average distance and Bary center
inf_12 = cor(influenza_scaled[,2], influenza_scaled[,3], method = "pearson")
inf_12 = round(inf_12,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_bar", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Bary")

# correlation Between centralities: Average distance and Decay Centrality
inf_13 = cor(influenza_scaled[,2], influenza_scaled[,7], method = "pearson")
inf_13 = round(inf_13,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_dec", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Decay")

# correlation Between centralities: Average distance and Eccentricity
inf_14 = cor(influenza_scaled[,2], influenza_scaled[,19], method = "pearson")
inf_14 = round(inf_14,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_ecc", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Eccentr")

# correlation Between centralities: Average distance and Closeness Centrality(Freeman)
inf_15 = cor(influenza_scaled[,2], influenza_scaled[,4], method = "pearson")
inf_15 = round(inf_15,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Freeman")

# correlation Between centralities: Average distance and Closeness Centrality(Latora)
inf_16 = cor(influenza_scaled[,2], influenza_scaled[,5], method = "pearson")
inf_16 = round(inf_16,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_lat", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Latora")


# correlation Between centralities: Average distance and Lin Centrality
inf_17 = cor(influenza_scaled[,2], influenza_scaled[,12], method = "pearson")
inf_17 = round(inf_17,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Lin")

# correlation Between centralities: Average distance and Radiality Centrality
inf_18 = cor(influenza_scaled[,2], influenza_scaled[,15], method = "pearson")
inf_18 = round(inf_18,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Radiality")

# correlation Between centralities: Average distance and Residual Closeness centrality
inf_19 = cor(influenza_scaled[,2], influenza_scaled[,6], method = "pearson")
inf_19 = round(inf_19,2)
ggscatter(influenza_scaled, x = "influenza_av", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Aver.Dis", ylab = "Residual")

# correlation Between centralities: Bary center and  Decay Centrality
inf_23 = cor(influenza_scaled[,3], influenza_scaled[,7], method = "pearson")
inf_23 = round(inf_23,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_dec", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Decay")

# correlation Between centralities: Bary center and  Eccentricity
inf_24 = cor(influenza_scaled[,3], influenza_scaled[,19], method = "pearson")
inf_24 = round(inf_24,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_ecc", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Eccentr")

# correlation Between centralities: Bary center and  Closeness Centrality(Freeman)
inf_25 = cor(influenza_scaled[,3], influenza_scaled[,4], method = "pearson")
inf_25 = round(inf_25,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Freeman")

# correlation Between centralities: Bary center and  Closeness Centrality(Latora)
inf_26 = cor(influenza_scaled[,3], influenza_scaled[,5], method = "pearson")
inf_26 = round(inf_26,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Latora")

# correlation Between centralities: Bary center and  Lin Centrality
inf_27 = cor(influenza_scaled[,3], influenza_scaled[,12], method = "pearson")
inf_27 = round(inf_27,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Lin")

# correlation Between centralities: Bary center and  Radiality Centrality
inf_28 = cor(influenza_scaled[,3], influenza_scaled[,15], method = "pearson")
inf_28 = round(inf_28,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Radiality")

# correlation Between centralities: Bary center and  Residual Closeness centrality
inf_29 = cor(influenza_scaled[,3], influenza_scaled[,6], method = "pearson")
inf_29 = round(inf_29,2)
ggscatter(influenza_scaled, x = "influenza_bar", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Bary", ylab = "Residual")

# correlation Between centralities:  Decay Centrality and Eccentricity
inf_34 = cor(influenza_scaled[,7], influenza_scaled[,19], method = "pearson")
inf_34 = round(inf_34,2)
ggscatter(influenza_scaled, x = "influenza_dec", y = "influenza_ecc", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Eccentr")


# correlation Between centralities:  Decay Centrality and Closeness Centrality(Freeman)
inf_35 = cor(influenza_scaled[,7], influenza_scaled[,4], method = "pearson")
inf_35 = round(inf_35,2)
ggscatter(influenza_scaled, x = "influenza_dec", y = "influenza_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Freeman")

# correlation Between centralities:  Decay Centrality and Closeness Centrality(Latora)
inf_36 = cor(influenza_scaled[,7], influenza_scaled[,5], method = "pearson")
inf_36 = round(inf_36,2)
ggscatter(influenza_scaled, x = "influenza_dec", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Latora")

# correlation Between centralities:  Decay Centrality and Lin Centrality
inf_37 = cor(influenza_scaled[,7], influenza_scaled[,12], method = "pearson")
inf_37 = round(inf_37,2)
ggscatter(influenza_scaled, x = "influenza_dec", y = "influenza_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Lin")

# correlation Between centralities:  Decay Centrality and Radiality Centrality
inf_38 = cor(influenza_scaled[,7], influenza_scaled[,15], method = "pearson")
inf_38 = round(inf_38,2)
ggscatter(influenza_scaled, x = "influenza_dec", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Radiality")

# correlation Between centralities:  Decay Centrality and Residual Closeness centrality
inf_39 = cor(influenza_scaled[,7], influenza_scaled[,6], method = "pearson")
inf_39 = round(inf_39,2)
ggscatter(influenza_scaled, x = "influenza_dec", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Decay", ylab = "Residual")

# correlation Between centralities:   Eccentricity and Closeness Centrality(Freeman) 
inf_45 = cor(influenza_scaled[,19], influenza_scaled[,4], method = "pearson")
inf_45 = round(inf_45,2)
ggscatter(influenza_scaled, x = "influenza_ecc", y = "influenza_clo", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Freeman")

# correlation Between centralities:  Eccentricity and Closeness Centrality(Latora)
inf_46 = cor(influenza_scaled[,19], influenza_scaled[,5], method = "pearson")
inf_46 = round(inf_46,2)
ggscatter(influenza_scaled, x = "influenza_ecc", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Latora")

# correlation Between centralities:  Eccentricity and Lin Centrality
inf_47 = cor(influenza_scaled[,19], influenza_scaled[,12], method = "pearson")
inf_47 = round(inf_47,2)
ggscatter(influenza_scaled, x = "influenza_ecc", y = "influenza_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Lin")

# correlation Between centralities:  Eccentricity and Radiality Centrality
inf_48 = cor(influenza_scaled[,19], influenza_scaled[,15], method = "pearson")
inf_48 = round(inf_48,2)
ggscatter(influenza_scaled, x = "influenza_ecc", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Radiality")

# correlation Between centralities:  Eccentricity and Residual Closeness centrality
inf_49 = cor(influenza_scaled[,19], influenza_scaled[,6], method = "pearson")
inf_49 = round(inf_49,2)
ggscatter(influenza_scaled, x = "influenza_ecc", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Eccentr", ylab = "Residual")

# correlation Between centralities: Closeness Centrality(Freeman) and Closeness Centrality(Latora)
inf_56 = cor(influenza_scaled[,4], influenza_scaled[,5], method = "pearson")
inf_56 = round(inf_56,2)
ggscatter(influenza_scaled, x = "influenza_clo", y = "influenza_la", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Latora")

# correlation Between centralities: Closeness Centrality(Freeman) and Lin Centrality
inf_57 = cor(influenza_scaled[,4], influenza_scaled[,12], method = "pearson")
inf_57 = round(inf_57,2)
ggscatter(influenza_scaled, x = "influenza_clo", y = "influenza_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Lin")

# correlation Between centralities: Closeness Centrality(Freeman) and Radiality Centrality
inf_58 = cor(influenza_scaled[,4], influenza_scaled[,15], method = "pearson")
inf_58 = round(inf_58,2)
ggscatter(influenza_scaled, x = "influenza_clo", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Radiality")

# correlation Between centralities: Closeness Centrality(Freeman) and Residual Closeness centrality
inf_59 = cor(influenza_scaled[,4], influenza_scaled[,6], method = "pearson")
inf_59 = round(inf_59,2)
ggscatter(influenza_scaled, x = "influenza_clo", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Freeman", ylab = "Residual")

# correlation Between centralities: Closeness Centrality(Latora) and Lin Centrality
inf_67 = cor(influenza_scaled[,5], influenza_scaled[,12], method = "pearson")
inf_67 = round(inf_67,2)
ggscatter(influenza_scaled, x = "influenza_la", y = "influenza_lin", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Latora", ylab = "Lin")

# correlation Between centralities: Closeness Centrality(Latora) and Radiality Centrality
inf_68 = cor(influenza_scaled[,5], influenza_scaled[,15], method = "pearson")
inf_68 = round(inf_68,2)
ggscatter(influenza_scaled, x = "influenza_la", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Latora", ylab = "Radiality")

# correlation Between centralities: Closeness Centrality(Latora) and Residual Closeness centrality
inf_69 = cor(influenza_scaled[,5], influenza_scaled[,6], method = "pearson")
inf_69 = round(inf_69,2)
ggscatter(influenza_scaled, x = "influenza_la", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Latora", ylab = "Residual")

# correlation Between centralities:  Lin Centrality and Radiality Centrality
inf_78 = cor(influenza_scaled[,12], influenza_scaled[,15], method = "pearson")
inf_78 = round(inf_78,2)
ggscatter(influenza_scaled, x = "influenza_lin", y = "influenza_rad", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lin", ylab = "Radiality")

# correlation Between centralities:  Lin Centrality and Residual Closeness centrality
inf_79 = cor(influenza_scaled[,12], influenza_scaled[,6], method = "pearson")
inf_79 = round(inf_79,2)
ggscatter(influenza_scaled, x = "influenza_lin", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Lin", ylab = "Residual")

# correlation Between centralities: Radiality Centrality and Residual Closeness centrality
inf_89 = cor(influenza_scaled[,15], influenza_scaled[,6], method = "pearson")
inf_89 = round(inf_89,2)
ggscatter(influenza_scaled, x = "influenza_rad", y = "influenza_res", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Radiality", ylab = "Residual")