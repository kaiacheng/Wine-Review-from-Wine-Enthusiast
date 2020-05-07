wine <- read.csv("Downloads/wine.csv",stringsAsFactors = TRUE)

wine$taster_twitter_handle<-NULL
wine$region_2<-NULL
wine$X1<-NULL
is.na(wine)
sum(is.na(wine))
na.omit(wine)

wine<-na.omit(wine)
#looking for missing vlaues using the DataExplorer package
library(DataExplorer)
options(repr.plot.width=8, repr.plot.height=3)
plot_missing(wine)
str(wine)

table(wine$price)
#data partition
set.seed(123)
ind<- sample(2, nrow(wine), replace= TRUE,prob = c(0.8,0.2))





freq<-count(wine$taster_name)
hist(freq)
summary(wine)
str(wine)
wine$taster_twitter_handle<-NULL
wine$region_2<-NULL
str(wine)
wine$price[which(is.na(wine$price))]<- mean(wine$price,na.rm=TRUE)
hist(log(wine$price))
wine$X<-NULL
