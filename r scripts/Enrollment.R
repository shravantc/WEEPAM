library(ggplot2)
Enrolment<-function()
{
setwd("C://Users/Narayana/Documents/project/");
df<-read.csv("enrollmentRate.csv")
#for(n in df)
#{
 # n<-df$enrate
#  if(n)
 # {
#    print("no data")
 # }
#}
# ggplot2 examples
plot(df$year,df$enrate,main="enrollment ratio",  col = "red",   xlab="year", ylab="Incremented rate")

}