library(igraph)

Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)
corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)

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
  curve(exp.fit, col = "red", add = T, n = length(d))
}

fit_log_exp(corona_ppi)




