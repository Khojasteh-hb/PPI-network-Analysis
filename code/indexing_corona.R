library(igraph)
library(pracma)

#read corona ppi network
Corona_Inter = read.delim(".datasets/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)
corona_nodes = data.frame(name = V(corona_ppi)$name)
corona_nodes = as.character(unlist(corona_nodes, use.names = FALSE ))

# indexing corona nodes with numbers
corona_num = matrix(1:length(corona_nodes))
corona_nodes = cbind(corona_num,corona_nodes)
colnames(corona_nodes)[1] = "corona.Num"

corona_edges = matrix(0,nrow(Corona_Inter),2)

for(i in 1:nrow(Corona_Inter)){
  for(j in 1:nrow(corona_nodes)){
    
    if(Corona_Inter[i,1] == corona_nodes[j,2]){
      corona_edges[i,1] = corona_nodes[j,1]
    }
    if(Corona_Inter[i,2] == corona_nodes[j,2]){
      corona_edges[i,2] = corona_nodes[j,1] 
    }
  }
}

write.csv(corona_edges,".datasets/corona_edges.csv", row.names = FALSE)
write.csv(corona_nodes,".datasets/corona_nodes.csv", row.names = FALSE)    

