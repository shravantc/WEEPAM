#require(tcltk)
population<-function()
{
  
#library(ggplot2)
setwd("C://Users/Narayana/Documents/project/");
#Cal<- function()
#{
#tt <- tktoplevel(bg="white", width=100, height=190)
#tkpack.propagate(tt,FALSE)
#frame1 <- tkframe(tt, bg = 'red')
#Name <- tclVar("")
#entry.Name <-tkentry(tt,width="20",textvariable=Name)
#tkgrid(tklabel(tt,text="Please enter the year to predict the value."))
#tkgrid(entry.Name)
#OnOK <- function()
#{
#  NameVal <- tclvalue(Name)
#  tkdestroy(tt)
#  if(NameVal=="")
#  {
#    msg <- paste("please enter the year to predect population");
#    tkmessageBox(message=msg)
 # }
#  else if(NameVal<2015)
 # {
#    msg <- paste("please enter the year more than current year");
#    tkmessageBox(message=msg)
 #   tkdestroy(tt)
  #}
#}
    df<-read.csv("pop.csv");
#OK.but <-tkbutton(tt,text="   OK   ",command=OnOK)
#tkbind(entry.Name, "<Return>",OnOK)
#tkgrid(OK.but)
#tkfocus(tt)
#table(df$year,df$population)
plot(df$year,df$population,main="population",xlab="year",ylab="population")
##plot(df$year,df$population)
#res<-lm(df$population~df$year)
#abline(res)
#res
#df$year
#names(res)
#summary(res)
#test<-res
#value<-test$coefficients[1]*year+test$coefficients[2]
#value
#}
}