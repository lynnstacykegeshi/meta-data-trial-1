#META DATA TRIAL 1
#Loading libraries
library(tidyverse)
library(xts)
library(tseries)
library(forecast)
library(seastests)
library(FinTS)


#checking working directory
getwd()

#import your data
meta<-read.csv("META Historical Data.csv", header = TRUE,  sep = ",")

#view the data
view(meta)

is.na(meta)#checking if data has any NAs
which(is.na(meta))#checking position of the NAs in the data frame

#retrive dimension of data
dim(meta)

#check structure of each column of dataframe
str(meta)
str(meta$Date)

library(dplyr)
library(lubridate)
library(gsubfn)
meta$new_date<-mdy(meta$Date)#changing date from character to date format
meta$new_change<-gsub("\\%", "", meta$Change..)
meta$new_change
meta$new_change1<-as.numeric(meta$new_change)
meta$new_change1
str(meta$new_change1)

str(meta$new_change)
#str(meta$new_date)

meta_clean<-meta %>% 
  mutate(date=mdy(meta$Date))
  #mutate(gsub("\\%", "", meta$Change..))
#head(meta_clean)

#time series
plot(meta$new_date,meta$Price,type="l", xlab = "Date")
plot(meta$new_date,meta$new_change1,type="l", xlab = "Date")
#plot(meta_clean$Date, meta_clean$Price,type = "l", xlab="Date")


