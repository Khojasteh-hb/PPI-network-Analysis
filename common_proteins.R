library(igraph)
library(pracma)


Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)
corona_ppi = graph_from_data_frame(Corona_Inter,directed = FALSE)

Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)
influenza_ppi = graph_from_data_frame(Influenza_Inter,directed = FALSE)

corona_nodes <- data.frame(name = V(corona_ppi)$name)
influenza_nodes <- data.frame(name = V(influenza_ppi)$name)

corona_nodes = as.character(unlist(corona_nodes, use.names = FALSE ))
influenza_nodes = as.character(unlist(influenza_nodes, use.names = FALSE ))

common_proteins = list()
count = 1

for (i in 1:length(corona_nodes) )
{
  for (j in 1:length(influenza_nodes) )
  {
    if(strcmp(corona_nodes[i], influenza_nodes[j]) == 1)
    {
      #print(corona_nodes[i])
      common_proteins[i] = corona_nodes[i]
      count = count + 1
    } 
    else
    {
      print("*")
    }
  }
}

common_proteins = as.character(unlist(common_proteins))


write.csv(common_proteins,".outputs/common_proteins.csv",
          row.names = TRUE)