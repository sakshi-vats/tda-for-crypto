setwd("C:\\Users\\anush\\OneDrive\\Desktop\\final")
getwd()
library(factoextra)
library(purrr)
library(cluster)
library(fclust)
library(ppclust)
library(dplyr)
library(ClusterR)
data <- read.csv("C:\\Users\\anush\\OneDrive\\Desktop\\final\\ORIGINAL.csv")
data[is.na(data$L1.norm.)]
data[is.na(data$BTC.)]
rownames(data) <- data$Date
data.frame <- as.data.frame(data)
# print(data.frame)
# data.scaled <- scale(data.frame[,2:3])
data.scaled <- data.frame[,4:5]
#ELBOW METHOD ----------------------------------------------------------->
# function to compute total within-cluster sum of square
# wss <- function(k) {
#   kmeans(data.scaled, k, nstart = 10 )$tot.withinss
# }
# 
# # Compute and plot wss for k = 1 to k = 15
# k.values <- 1:15
# 
# # extract wss for 2-15 clusters
# wss_values <- map_dbl(k.values, wss)
# 
# plot(k.values, wss_values,
#      type="b", pch = 19, frame = FALSE,
#      xlab="Number of clusters K",
#      ylab="Total within-clusters sum of squares")

# fviz_nbclust(na.omit(data.scaled), kmeans, method = "wss")# k = 4

#ELBOW METHOD -------------------------------------------------------->

#silhouette method --------------------------------------------------------->
# fviz_nbclust(na.omit(data.scaled), kmeans, method = "silhouette")# k = 3
#---------------------------------------------------------------------------->

#Gap strategy -------------------------------------------------------------->
# set.seed(123)
# gap_stat <- clusGap(data.scaled, FUN = kmeans, nstart = 25,
#                     K.max = 10, B = 50)
# print(gap_stat, method = "firstmax")
# fviz_nbclust(na.omit(data.scaled), kmeans, method = "gap_stat")
#---------------------------------------------------------------------------->
#Fuzzy C means clustering -------------------------------------------------->
# res.fcm <- fcm(na.omit(data.scaled), centers=4)
# as.data.frame(res.fcm$u)[,]
# res.fcm3 <- ppclust2(res.fcm, "fanny")
# 
# cluster::clusplot(data.frame[,4:5], res.fcm3$cluster,  
#                   main = "Clusters",
#                   color=TRUE, labels = 2, lines = 2, cex=1)
# summary(res.fcm)
# res.fcm2 <- ppclust2(res.fcm, "kmeans")
# fviz_cluster(res.fcm2, data = na.omit(data.scaled),
# ellipse.type = "convex",
# palette = "jco",
# repel = TRUE)
#--------------------------------------------------------------------------->

#Gaussian mixture model----------------------------------------------------->

# dim(data.scaled)
# gmm = GMM(data.scaled, 2, dist_mode = "maha_dist", seed_mode = "random_subset", km_iter = 10,em_iter = 10, verbose = F)
# 
# # predict centroids, covariance matrix and weights
# pr = predict_GMM(data.scaled, gmm$centroids, gmm$covariance_matrices, gmm$weights)
# print(pr)
# opt_gmm = Optimal_Clusters_GMM(data.scaled, max_clusters = 10, criterion = "BIC",
# 
#                                dist_mode = "maha_dist", seed_mode = "random_subset",
# 
#                                km_iter = 10, em_iter = 10, var_floor = 1e-10,
# 
#                                plot_data = T)
# k = 2
#----------------------------------------------------------------------------->

#kmeans + GMM ---------------------------------------------------------------->


