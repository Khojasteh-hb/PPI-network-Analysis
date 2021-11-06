library(igraph)
library(poweRlaw)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

# plot and fit the power law distribution
fit_log_exp = function(graph) {
  
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
  print(alpha)
  beta = cozf[[2]]
  print(beta)
  exp.fit = function(x) (log(alpha) + beta * x)
  
  # plot
  plot(probability ~ degree, log = "xy", xlab = "Degree (log)", ylab = "Probability (log)", 
       col = 1, main = "Power vs.Degree Distribution")
  curve(exp.fit, col = "blue", add = T, n = length(d))
}
fit_log_exp(influenza_ppi)




