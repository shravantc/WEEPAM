PredictDropStudent<-function(year)
{
setwd("C://Users/Narayana/Documents/project/");
df<-read.csv("dropStudentlist.csv")
barplot(df$grade1,df$year)
res<-lm(df$grade1~df$year)
test<-res
value<-test$coefficients[2]*year+test$coefficients[1]
value
Benz = data.frame(year =year ,primary=0,grade1= value)
newdata = rbind(df,Benz)
barplot(newdata$grade1,newdata$year)
barplot(newdata$grade1,newdata$year, main="Drop student ", xlab="year", ylab="number of count", names.arg=c(newdata$year),border="red", density=c(90, 70, 50, 40, 30, 20, 10))
return(value);
}