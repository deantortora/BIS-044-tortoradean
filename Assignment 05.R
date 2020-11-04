#Assigning dataset as a variable so I can access it
X <- read.csv("USvideos.csv")
View(X)

#1
library(tidyverse)
X$trending_date <- as.Date(X$trending_date, "%y.%d.%m")
View(X)

#2
X1 <- separate(X,col=publish_time,into=c("PDate","PTime"),"T",extra="merge")
X1$PDate <- as.Date(X1$PDate,format = "%Y-%m-%d" )
X1$PTime <- as.POSIXct(paste(X1$PDate, X1$PTime), format="%Y-%m-%d %H:%M:%OSZ")
View(X1)

#3
library(stringr)
X1$title <- str_to_title(X1$title)
View(X1)

#4
View(X1)
