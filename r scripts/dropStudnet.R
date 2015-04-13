DropStudent<-function()
{
  

setwd("C://Users/Narayana/Documents/project/");
df<-read.csv("dropStudentlist.csv")
#barplot(newdata$student,newdata$year)
barplot(df$grade1,df$year,main="Drop student",xlab="year",ylab="Number of count",names.arg=c(df$year),border="red")
#res<-lm(df$student~df$year)
#test<-res
#value<-test$coefficients[2]*2017+test$coefficients[1]
#value
#Benz = data.frame(year =2017 ,student= value)
#newdata = rbind(df,Benz)
#barplot(newdata$student,newdata$year)
#barplot(newdata$student,newdata$year, main="Drop student ", xlab="year", ylab="number of count", names.arg=c(newdata$year),border="red", density=c(90, 70, 50, 40, 30, 20, 10))

}