library(igraph)

Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)
corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)


# calculate degree
d = degree(corona_ppi, mode = "all")
t = table(d)


plot(t / sum(t), type='h', cex = 1.5, col = "black", xlim=c(1,50),
     ylim=c(0, 0.2), main = "SARS-CoV-2", xlab="Degree", ylab="Frequency")
 
# Heterogeneity
Heter_corona = (sd(d))/mean(d)
Heter_corona = round(Heter_corona, digits = 4)
print(Heter_corona)

