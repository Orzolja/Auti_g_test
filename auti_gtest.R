

setwd("WRITE PATH HERE")
auti_gtest<- read.csv(file="data2004_filtered_total.csv", header=TRUE, sep=",")

install.packages("DescTools")
install.packages("RVAideMemoire")
install.packages("descr")
library(RVAideMemoire)
library(DescTools)
library(descr)

#expl_sajat_szemkontaktus
CrossTable(auti_gtest$expl_s_szk, auti_gtest$csoport)
#expl_s_szk <- CrossTable(auti_gtest$expl_s_szk, auti_gtest$csoport)
#expl_s_szk$tab


data <- data.frame("Cluster1" = c(17,14), "Cluster2" = c(1,2))
matriz <- as.matrix(data)
G.test(matriz)

#nincs szk saját
CrossTable(auti_gtest$expl_s_nszk, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(16,10), "Cluster2" = c(2,6))
matriz <- as.matrix(data)
G.test(matriz)


#imp1
CrossTable(auti_gtest$imp1_teljes, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(16,14), "Cluster2" = c(2,2))
matriz <- as.matrix(data)
G.test(matriz)


#imp2
CrossTable(auti_gtest$imp2_teljes, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(1,2), "Cluster2" = c(17,14))
matriz <- as.matrix(data)
G.test(matriz)

#szk_teljesminta_clustertagsag
CrossTable(auti_gtest$szk_teljesminta_clustertagsag, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(17,14), "Cluster2" = c(1,2))
matriz <- as.matrix(data)
G.test(matriz)

#nszk_teljesminta_clustertagsag
CrossTable(auti_gtest$nszk_teljesminta_clustertagsag, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(16,10), "Cluster2" = c(2,6))
matriz <- as.matrix(data)
G.test(matriz)



#expl_sajat_nszk_auti
CrossTable(auti_gtest$expl_s_nszk_auti, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(11,5))
matriz <- as.matrix(data)
G.test(matriz)

#expl_sajat_szk_auti
CrossTable(auti_gtest$expl_s_szk_auti, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(14,2))
matriz <- as.matrix(data)
G.test(matriz)

#expl kv szk auti
CrossTable(auti_gtest$expl_kv_szk_auti, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(15,1))
matriz <- as.matrix(data)
G.test(matriz)

#expl kv nincs szk auti
CrossTable(auti_gtest$expl_kv_nszk_auti, auti_gtest$csoport)

data <- data.frame("Cluster1" = c(13,3))
matriz <- as.matrix(data)
G.test(matriz)



