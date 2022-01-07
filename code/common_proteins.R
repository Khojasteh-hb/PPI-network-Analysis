# Common Human and Virus proteins in SARS-CoV-2 and (H1N1) influenza PPI networks

library(pracma)

#read SARS-CoV-2 PPI
Corona_Inter = read.delim(".Data/SARS2HVPPI.txt")
Corona_Inter = as.data.frame(Corona_Inter)

#read (H1N1) influenza PPI 
Influenza_Inter = read.delim(".Data/H1N1HVPPI.txt")
Influenza_Inter = as.data.frame(Influenza_Inter)


Corona_hp = unique(Corona_Inter$Human)
Influenza_hp = unique(Influenza_Inter$Human)

Corona_vp = unique(Corona_Inter$Virus)
Influenza_vp = unique(Influenza_Inter$Virus)

common_hp = list()
common_vp = list()

count_hp = 0
count_vp = 0

for (i in 1:length(Corona_hp) )
{
  for (j in 1:length(Influenza_hp) )
  {
    if(strcmp(Corona_hp[i], Influenza_hp[j]) == 1)
    {
      common_hp[i] = Corona_hp[i]
      count_hp = count_hp + 1
    } 
    else
    {
      print("*1")
    }
  }
}

# Number of common human proteins
print(paste0("Number of common human proteins: ", count_hp))

common_hp = data.frame(common_hp = unlist(common_hp))


for (i in 1:length(Corona_vp) )
{
  for (j in 1:length(Influenza_vp) )
  {
    if(strcmp(Corona_vp[i], Influenza_vp[j]) == 1)
    {
      common_vp[i] = Corona_vp[i]
      count_vp = count_vp + 1
    } 
    else
    {
      print("*2")
    }
  }
}

# Number of common virus proteins
print(paste0("Number of common virus proteins: ", count_vp))






