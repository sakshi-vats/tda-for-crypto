setwd("C:\\Users\\anush\\OneDrive\\Desktop\\final")
getwd()
library(factoextra)
library(purrr)
library(cluster)
library(fclust)
library(ppclust)
library(dplyr)
library(ClusterR)
library(fpc)
data <- read.csv("C:\\Users\\anush\\OneDrive\\Desktop\\final\\ORIGINAL.csv")
data[is.na(data$L1.norm.)]
data[is.na(data$BTC.)]
rownames(data) <- data$Date
data.frame <- as.data.frame(data)
data_final <- data.frame[626:679,2:3]
res.fcm <- fcm(na.omit(data_final), centers = 4, m = 2)
fm_stats <- cluster.stats(dist(data_final),  res.fcm$cluster)
print(fm_stats)
#------------------------------------------------------------------>
# res.fcm3 <- ppclust2(res.fcm, "fanny")
# 
# cluster::clusplot(data_final, res.fcm3$cluster,
#                   main = "Clusters",
#                   color=TRUE, labels = 2, lines = 2, cex=1)
#------------------------------------------------------------------>
# summary(res.fcm)
res.fcm2 <- ppclust2(res.fcm, "kmeans")
fviz_cluster(res.fcm2, data = na.omit(data_final),
ellipse.type = "convex",
palette = "jco",
repel = TRUE)
#------------------------------------------------------------------>
# res.fcm4 <- ppclust2(res.fcm, "fclust")
# idxsf <- SIL.F(res.fcm4$Xca, res.fcm4$U, alpha=1)
# idxpe <- PE(res.fcm4$U)
# idxpc <- PC(res.fcm4$U)
# idxmpc <- MPC(res.fcm4$U)
# 
# cat("Partition Entropy: ", idxpe)
# cat("Partition Coefficient: ", idxpc)
# cat("Modified Partition Coefficient: ", idxmpc)
# cat("Fuzzy Silhouette Index: ", idxsf)
