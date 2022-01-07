# Scaling of centrality measures in SARS-CoV-2 PPI network 

library(readr)
library(Matrix)
library(igraph)
library(RGCCA)

# Reading SARS-CoV-2 net

corona_edges = read.csv(file = ".datasets/corona_edges.csv",
                        header = TRUE)
corona_nodes = read.csv(file = ".datasets/corona_nodes.csv",
                        header = TRUE)    

#Reading centrality values in SARS-CoV-2  net
corona_av = read.csv(file = ".outputs/corona_av.csv", header = TRUE)
data1 = as.data.frame(corona_av[,2])
colnames(data1) = "corona_av"

corona_bar = read.csv(file = ".outputs/corona_bar.csv", header = TRUE)
data2 = as.data.frame(corona_bar[,2])
colnames(data2) = "corona_bar"

corona_clo = read.csv(file = ".outputs/corona_clo.csv", header = TRUE)
data3 = as.data.frame(corona_clo[,2])
colnames(data3) = "corona_clo"

corona_lat = read.csv(file = ".outputs/corona_lat.csv", header = TRUE)
data4 = as.data.frame(corona_lat[,2])
colnames(data4) = "corona_lat"

corona_res = read.csv(file = ".outputs/corona_res.csv", header = TRUE)
data5 = as.data.frame(corona_res[,2])
colnames(data5) = "corona_res"

corona_dec = read.csv(file = ".outputs/corona_dec.csv", header = TRUE)
data6 = as.data.frame(corona_dec[,2])
colnames(data6) = "corona_dec"

corona_dif = read.csv(file = ".outputs/corona_dif.csv", header = TRUE)
data7 = as.data.frame(corona_dif[,2])
colnames(data7) = "corona_dif"

corona_geo = read.csv(file = ".outputs/corona_geo.csv", header = TRUE)
data8 = as.data.frame(corona_geo[,2])
colnames(data8) = "corona_geo"

corona_la = read.csv(file = ".outputs/corona_la.csv", header = TRUE)
data9 = as.data.frame(corona_la[,2])
colnames(data9) = "corona_la"

corona_lev = read.csv(file = ".outputs/corona_lev.csv", header = TRUE)
data10 = as.data.frame(corona_lev[,2])
colnames(data10) = "corona_lev"

corona_lin = read.csv(file = ".outputs/corona_lin.csv", header = TRUE)
data11 = as.data.frame(corona_lin[,2])
colnames(data11) = "corona_lin"

corona_lob = read.csv(file = ".outputs/corona_lob.csv", header = TRUE)
data12 = as.data.frame(corona_lob[,2])
colnames(data12) = "corona_lob"

corona_mar = read.csv(file = ".outputs/corona_mar.csv", header = TRUE)
data13 = as.data.frame(corona_mar[,2])
colnames(data13) = "corona_mar"

corona_mnc = read.csv(file = ".outputs/corona_mnc.csv", header = TRUE)
data14 = as.data.frame(corona_mnc[,2])
colnames(data14) = "corona_mnc"

corona_rad = read.csv(file = ".outputs/corona_rad.csv", header = TRUE)
data15 = as.data.frame(corona_rad[,2])
colnames(data15) = "corona_rad"

corona_eig = read.csv(file = ".outputs/corona_eig.csv", header = TRUE)
data16 = as.data.frame(corona_eig[,2])
colnames(data16) = "corona_eig"

corona_sub = read.csv(file = ".outputs/corona_sub.csv", header = TRUE)
data17 = as.data.frame(corona_sub[,2])
colnames(data17) = "corona_sub"

corona_bet = read.csv(file = ".outputs/corona_bet.csv", header = TRUE)
data18 = as.data.frame(corona_bet[,2])
colnames(data18) = "corona_bet"

corona_ecc = read.csv(file = ".outputs/corona_ecc.csv", header = TRUE)
data19 = as.data.frame(corona_ecc[,2])
colnames(data19) = "corona_ecc"

corona_deg = read.csv(file = ".outputs/corona_deg.csv", header = TRUE)
data20 = as.data.frame(corona_deg[,2])
colnames(data20) = "corona_deg"

corona_auth = read.csv(file = ".outputs/corona_auth.csv", header = TRUE)
data21 = as.data.frame(corona_auth[,2])
colnames(data21) = "corona_auth"

corona_hub = read.csv(file = ".outputs/corona_hub.csv", header = TRUE)
data22 = as.data.frame(corona_hub[,2])
colnames(data22) = "corona_hub"

corona_dt1 = cbind(data1, data2, data3, data4)
corona_dt2 = cbind(data5, data6, data7, data8)

temp1 = cbind(corona_dt1,corona_dt2)

corona_dt3 = cbind(data9, data10, data11, data12)
corona_dt4 = cbind(data13, data14, data15, data16)

temp2 = cbind(corona_dt3, corona_dt4)

corona_dt5 = cbind(data17, data18, data19, data20)
corona_dt6 = cbind(data21, data22)

temp3 = cbind(corona_dt5, corona_dt6)

corona_dt = cbind(temp1, temp2, temp3)
corona_dt = as.data.frame(corona_dt[,-14])
#write.csv(corona_dt,".outputs/corona_dt.csv", row.names = TRUE)

corona_scaled = scale2 (corona_dt, center = TRUE, scale = TRUE, bias = TRUE)

corona_scaled = as.data.frame(corona_scaled)
#write.csv(corona_scaled,".outputs/corona_scaled.csv", row.names = TRUE)
