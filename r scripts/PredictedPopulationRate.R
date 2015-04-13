library(ggplot2)
populationRate<-function(year)
{
setwd("C://Users/Narayana/Documents/project/");
df<-read.csv("populationRate.csv")
#plot(df$year, df$rate, type='l', col="blue")
par(new=T)
res<-lm(df$rate~df$year)
test<-res
value<-test$coefficients[2]*year+test$coefficients[1]
value
Benz = data.frame(year =year ,rate= value)
newdata = rbind(df,Benz)
#plot(df$year,df$rate,main="Predicted Rate of population", col = "blue", lwd = 1, xlab="year", ylab="Incremented rate")
#plot(newdata$year, newdata$rate, type='l', col="red")
 par(new=F)
newdata
x<-df$year
y1<-df$rate
y2<-newdata$rate
plot(x, y1, col = "blue", type="l")
plot(newdata$year,newdata$rate,type="l")
points(newdata$year, y2, col = "red", type="l")
return(value)
}
