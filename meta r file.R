META DATA TRIAL 1
#checking working directory
getwd()

library(tidyverse)
#import your data
meta<-read.csv("META Historical Data.csv", header = TRUE, sep = ",")

#view the data
view(meta)

