library(igraph)
library(pracma)

#read influenza ppi network
Influenza_Inter = read.delim(".datasets/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)

influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)
influenza_nodes = data.frame(name = V(influenza_ppi)$name)
influenza_nodes = as.character(unlist(influenza_nodes, use.names = FALSE ))

# indexing  influenza nodes with numbers
influenza_num = matrix(1:length(influenza_nodes))
influenza_nodes = cbind(influenza_num,influenza_nodes)
colnames(influenza_nodes)[1] = "influenza.Num"

influenza_edges = matrix(0,nrow(Influenza_Inter),2)

for(i in 1:nrow(Influenza_Inter)){
  for(j in 1:nrow(influenza_nodes)){
    
    if(Influenza_Inter[i,1] == influenza_nodes[j,2]){
      influenza_edges[i,1] = influenza_nodes[j,1]
    }
    if(Influenza_Inter[i,2] == influenza_nodes[j,2]){
      influenza_edges[i,2] = influenza_nodes[j,1] 
    }
  }
}

write.csv(influenza_edges,".datasets/influenza_edges.csv", row.names = FALSE)
write.csv(influenza_nodes,".datasets/influenza_nodes.csv", row.names = FALSE)