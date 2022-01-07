# Fitting  SARS-CoV-2 PPIN on power-law and exponential distribution 

library(igraph)

Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)
corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)

# plot and fit the power law distribution
fit_power_exp = function(graph) {
  # calculate degree
  d = degree(graph, mode = "all")
  dd = degree.distribution(graph, mode = "all", cumulative = FALSE)
  degree = 1:max(d)
  probability = dd[-1]
  
  # delete blank values
  nonzero.position = which(probability != 0)
  probability = probability[nonzero.position]
  degree = degree[nonzero.position]
  
  #Linear regression
  reg = lm(log(probability) ~ log(degree))
  cozf = coef(reg)
  
  alpha = -cozf[[1]]
  #print(alpha)
  beta = cozf[[2]]
  #print(beta)
  
  power.law.fit = function(x) exp(cozf[[1]] + cozf[[2]] * log(x))
  exp.fit = function(x) exp(log(alpha) + beta * x) 
  
  dev.new(width=5.5, height=5, unit="cm")
  # plot
  plot(probability ~ degree, log = "xy", xlab = "Degree (log)", ylab = "Probability (log)", 
       xlim=c(1,50), pch = 17, cex = 1, col = "gold3", main = "SARS-CoV-2",
        cex.lab=1.5, cex.axis=1.5, cex.main=1.5)
 
  curve(power.law.fit, col = "firebrick3",lwd = 2, add = T, n = length(d))
  curve(exp.fit, col = "dodgerblue4",lwd = 2, add = T, n = length(d))
}


fit_power_exp(corona_ppi)






