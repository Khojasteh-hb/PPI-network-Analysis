library(igraph)

Corona_Inter = read.delim("./datasets/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)
corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)

# plot and fit the power law distribution
fit_power_law = function(graph) {
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
  power.law.fit = function(x) exp(cozf[[1]] + cozf[[2]] * log(x))
  alpha = -cozf[[2]]
  R.square = summary(reg)$r.squared
  print(paste("Alpha =", round(alpha, 3)))
  print(paste("R square =", round(R.square, 3)))
  #print(summary(reg))
  # plot
  plot(probability ~ degree, log = "xy", xlab = "Degree (log)", ylab = "Probability (log)", 
       col = 1, main = "Power vs.Degree Distribution")
  curve(power.law.fit, col = "dark blue", cex = 1.5, add = T, n = length(d))
}

fit_power_law(corona_ppi)
