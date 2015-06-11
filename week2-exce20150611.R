R<-c(2.27,1.98,1.69,1.88,1.64,2.14)
H<-c(8.28,8.04,9.06,8.70,7.58,8.34)
cone<-rbind(R,H)
volume<-(1/3)*pi*(R^2)*H
volume

mean(volume)
median(volume)
sd(volume)
mean(volume[H<8.5])

?which

which.min(c(3,5,2,1,8))
which.min(c(3,5,1,1,8))

cherry<-read.csv("D:/vijji/cherry.csv",sep=",")
library(xlsx)
cherry3 <- read.xlsx("D:/vijji/cherry.xlsx", sheetIndex=1)

head(cherry)
cherry
plot(cherry)
summary(cherry)

girth
hist(girth)
cherry$girth
mean(cherry$girth)
hist(cherry$girth)

with(cherry, hist(hight))
with(cherry, mean(hight))

attach(cherry)
girth
mean(girth)
hist(girth)
plot(hight, Volume)
detach(cherry)
girth

cherry1 <- transform(cherry, logVolume=log(volume), logGirth=log(girth))
cherry1
head(cherry1)
hist(cherry1$logGirth)

cherry[3,]
cherry[3:5,]
cherry[-c(2,4),]

subset(cherry, hight>70)
subset(cherry, hight<=70)
subset(cherry, hight==30)
subset(cherry, hight==30, select=c(girth,volume))
subset(cherry, hight>80 & girth>15)
subset(cherry, hight>80 | girth>15)

newData <- data.frame(girth=c(11.5, 17.0), hight=c(71, 75), volume=c(22, 40))
newData
allData <- rbind(cherry, newData)
allData

precipitation <- rnorm(n=31, mean=50, sd=10)
precipitation
allData2 <- cbind(cherry, precipitation)
allData2

