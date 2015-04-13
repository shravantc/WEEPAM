library(ggplot2)
PreEnroll<-function(year)
{
  

setwd("C://Users/Narayana/Documents/project/");
df<-read.csv("enrollmentRate.csv")
#plot(df$year, df$rate, type='l', col="blue")
par(new=T)
res<-lm(df$enrate~df$year)
test<-res
value<-test$coefficients[2]*year+test$coefficients[1]
value
Benz = data.frame(year =year,enrate= value)
newdata = rbind(df,Benz)
#plot(df$year,df$rate,main="Predicted Rate of population", col = "blue", lwd = 1, xlab="year", ylab="Incremented rate")
#plot(newdata$year, newdata$rate, type='l', col="red")
par(new=F)
newdata
x<-df$year
y1<-df$rate
y2<-newdata$enrate
plot(x, y1, col = "blue", type="l")
plot(newdata$year,newdata$enrate)
points(newdata$year, y2, col = "red", type="l")
return(value);
}


