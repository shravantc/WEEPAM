library(ggplot2)
PopulationRate<-function()
{
setwd("C://Users/Narayana/Documents/project/");
df<-read.csv("populationRate.csv")
# ggplot2 examples
plot(df$year,df$rate,main="Rate of population", col = "red", type='l', xlab="year", ylab="Incremented rate")
df$rate
}


