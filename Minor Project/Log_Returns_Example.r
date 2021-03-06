# Working directory is where this script is at.
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
source("TDA_Finance.R")

# Load required packages
library(quantmod)   # for getSymbols
library(TDA)        # for ripsDiag
library(PKNCA)      # for pk.calc.auc.all

#import an one dimension time series as an xts object. 
#Here we use Bitcoin data from the specified dates
getSymbols.yahoo("BTC-USD", env = parent.frame(),from="2016-02-23", to="2018-02-06", warnings = FALSE)
data <- `BTC-USD`[,4]

#This calculates the norm of the data in one line.
#
#Implicitly, this is using the default values for parameters:
# - embedding dim = 4
# - scaling is "log" which means that we will take the log of the data
# - max_scale is defaulted to zero, which leads to estimating max_scale 
#   using the find_diam function.
# - K_max = 10
# - window = 50
# - returns = TRUE means that we will take log-returns of the price 
#   time series before processing it through the TDA pipeline.
#   Note that when returns = TRUE, the scaling parameter has no effect.
#
#Thus, this is equivalent to: 
# norm_data <- 
# analyze_1d(data, dim=4, scaling_method="log", max_scale=0, 
# K_max=10, window=50, returns = TRUE)
norm_data <- analyze_1d(data, returns = TRUE)

#Here we plot the norm
# plot(norm_data, type = 'l')

output(norm_data, "BTC.zoo")