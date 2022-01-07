library(igraph)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

# calculate degree
d = degree(influenza_ppi, mode = "all")
t = table(d)

plot(t / sum(t), type='l', cex = 1.5, col = "black", xlim=c(1,50),
     ylim=c(0, 0.2), main = "(H1N1) influenza", xlab="Degree", ylab="Frequency")

# Heterogeneity
Heter_influenza = (sd(d))/mean(d)
Heter_influenza = round(Heter_influenza, digits = 4)
print(Heter_influenza)