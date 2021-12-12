setwd("C:\\Users\\anush\\OneDrive\\Desktop\\final")
getwd()
library(factoextra)
library(ClusterR)
library(cluster)
library(fpc)
library(stats)
data <- read.csv("C:\\Users\\anush\\OneDrive\\Desktop\\final\\ORIGINAL.csv")
data <- as.data.frame(data)
data[is.na(data$L1.norm.)]
data[is.na(data$BTC.)]
rownames(data) <- data$Date
data.frame <- as.data.frame(data)
# plot(data.frame[,4:5])
# ------------------------------------------------------------------>
# L1normdata <- data[,3]
# maxL1 <- max(L1normdata)
# minL1 <- min(L1normdata)
# L1normdata<- (L1normdata - minL1)/(maxL1 - minL1)
# write.csv(L1normdata, 'L1norm_data.csv')
# ------------------------------------------------------------------->
# data.scaled <- scale(data.frame[,2:3])
# dist.eucl <- dist(data.scaled, method = "euclidean")
# print(dist.eucl)
# km.res <- eclust(na.omit(data.frame[,4:5]), "kmeans", k = 4,nstart = 25)
# set.seed(50)
# km.res <- kmeans(na.omit(data.frame[,4:5]), 4, nstart = 25, na.rm = TRUE)
# km_stats <- cluster.stats(dist(data.frame[,4:5]),  km.res$cluster)
# print(km_stats)
# res <- km.res$cluster
# res <- as.data.frame(res)
#--------------------------------------------------------------->
# kmeans.re <- kmeans(na.omit(data.frame[,4:5]), centers = 4, nstart = 25)
# km_stats <- cluster.stats(dist(data.frame[,4:5]),  kmeans.re$cluster)
# print(km_stats)

# kmeans.re
# y_kmeans <- kmeans.re$cluster
# clusplot(data.frame[,4:5],
#          y_kmeans,
#          lines = 0,
#          shade = TRUE,
#          color = TRUE,
#          labels = 2,
#          plotchar = FALSE,
#          span = TRUE,
#          main = paste("Clusters"),
#          xlab = 'log(BTC)',
#          ylab = 'L1 norm')
# print(res)
# # Visualize k-means clusters
# fviz_cluster(km.res, data = na.omit(data.frame[,4:5]))

data_final <- data_final <- data.frame[626:679,2:3]
km.res <- kmeans(na.omit(data_final), 4, iter.max = 10, nstart = 1,algorithm = "MacQueen", trace=FALSE)
km_stats <- cluster.stats(dist(data_final),  km.res$cluster)
print(km_stats)
fviz_cluster(km.res, data = na.omit(data_final))