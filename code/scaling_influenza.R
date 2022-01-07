# Scaling of centrality measures in (H1N1)influenza PPI network 

library(readr)
library(Matrix)
library(igraph)
library(RGCCA)

# Reading (H1N1)influenza net

influenza_edges = read.csv(file = ".Data/influenza_edges.csv",
                           header = TRUE)
influenza_nodes = read.csv(file = ".Data/influenza_nodes.csv",
                           header = TRUE)    

#Reading centrality values in (H1N1)influenza  net
influenza_av = read.csv(file = ".outputs/influenza_av.csv", header = TRUE)
data1 = as.data.frame(influenza_av[,2])
colnames(data1) = "influenza_av"

influenza_bar = read.csv(file = ".outputs/influenza_bar.csv", header = TRUE)
data2 = as.data.frame(influenza_bar[,2])
colnames(data2) = "influenza_bar"

influenza_clo = read.csv(file = ".outputs/influenza_clo.csv", header = TRUE)
data3 = as.data.frame(influenza_clo[,2])
colnames(data3) = "influenza_clo"

influenza_lat = read.csv(file = ".outputs/influenza_lat.csv", header = TRUE)
data4 = as.data.frame(influenza_lat[,2])
colnames(data4) = "influenza_lat"

influenza_res = read.csv(file = ".outputs/influenza_res.csv", header = TRUE)
data5 = as.data.frame(influenza_res[,2])
colnames(data5) = "influenza_res"

influenza_dec = read.csv(file = ".outputs/influenza_dec.csv", header = TRUE)
data6 = as.data.frame(influenza_dec[,2])
colnames(data6) = "influenza_dec"

influenza_dif = read.csv(file = ".outputs/influenza_dif.csv", header = TRUE)
data7 = as.data.frame(influenza_dif[,2])
colnames(data7) = "influenza_dif"

influenza_geo = read.csv(file = ".outputs/influenza_geo.csv", header = TRUE)
data8 = as.data.frame(influenza_geo[,2])
colnames(data8) = "influenza_geo"

influenza_la = read.csv(file = ".outputs/influenza_la.csv", header = TRUE)
data9 = as.data.frame(influenza_la[,2])
colnames(data9) = "influenza_la"

influenza_lev = read.csv(file = ".outputs/influenza_lev.csv", header = TRUE)
data10 = as.data.frame(influenza_lev[,2])
colnames(data10) = "influenza_lev"

influenza_lin = read.csv(file = ".outputs/influenza_lin.csv", header = TRUE)
data11 = as.data.frame(influenza_lin[,2])
colnames(data11) = "influenza_lin"

influenza_lob = read.csv(file = ".outputs/influenza_lob.csv", header = TRUE)
data12 = as.data.frame(influenza_lob[,2])
colnames(data12) = "influenza_lob"

influenza_mar = read.csv(file = ".outputs/influenza_mar.csv", header = TRUE)
data13 = as.data.frame(influenza_mar[,2])
colnames(data13) = "influenza_mar"

influenza_mnc = read.csv(file = ".outputs/influenza_mnc.csv", header = TRUE)
data14 = as.data.frame(influenza_mnc[,2])
colnames(data14) = "influenza_mnc"

influenza_rad = read.csv(file = ".outputs/influenza_rad.csv", header = TRUE)
data15 = as.data.frame(influenza_rad[,2])
colnames(data15) = "influenza_rad"

influenza_eig = read.csv(file = ".outputs/influenza_eig.csv", header = TRUE)
data16 = as.data.frame(influenza_eig[,2])
colnames(data16) = "influenza_eig"

influenza_sub = read.csv(file = ".outputs/influenza_sub.csv", header = TRUE)
data17 = as.data.frame(influenza_sub[,2])
colnames(data17) = "influenza_sub"

influenza_bet = read.csv(file = ".outputs/influenza_bet.csv", header = TRUE)
data18 = as.data.frame(influenza_bet[,2])
colnames(data18) = "influenza_bet"

influenza_ecc = read.csv(file = ".outputs/influenza_ecc.csv", header = TRUE)
data19 = as.data.frame(influenza_ecc[,2])
colnames(data19) = "influenza_ecc"

influenza_deg = read.csv(file = ".outputs/influenza_deg.csv", header = TRUE)
data20 = as.data.frame(influenza_deg[,2])
colnames(data20) = "influenza_deg"

influenza_auth = read.csv(file = ".outputs/influenza_auth.csv", header = TRUE)
data21 = as.data.frame(influenza_auth[,2])
colnames(data21) = "influenza_auth"

influenza_hub = read.csv(file = ".outputs/influenza_hub.csv", header = TRUE)
data22 = as.data.frame(influenza_hub[,2])
colnames(data22) = "influenza_hub"

influenza_dt1 = cbind(data1, data2, data3, data4)
influenza_dt2 = cbind(data5, data6, data7, data8)

temp1 = cbind(influenza_dt1,influenza_dt2)

influenza_dt3 = cbind(data9, data10, data11, data12)
influenza_dt4 = cbind(data13, data14, data15, data16)

temp2 = cbind(influenza_dt3, influenza_dt4)

influenza_dt5 = cbind(data17, data18, data19, data20)
influenza_dt6 = cbind(data21, data22)

temp3 = cbind(influenza_dt5, influenza_dt6)

influenza_dt = cbind(temp1, temp2, temp3)
influenza_dt = as.data.frame(influenza_dt[,-14])
write.csv(influenza_dt,".outputs/influenza_dt.csv", row.names = TRUE)

influenza_scaled = scale2 (influenza_dt, center = TRUE, scale = TRUE, bias = TRUE)

influenza_scaled = as.data.frame(influenza_scaled)
write.csv(influenza_scaled,".outputs/influenza_scaled.csv", row.names = TRUE)
