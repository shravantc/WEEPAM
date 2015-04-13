require(tcltk)
setwd("C://Users/Narayana/Documents/project/");
totalEnroll<-0;
tt <- tktoplevel()
topMenu <- tkmenu(tt)
tkconfigure(tt,menu=topMenu)
fileMenu <- tkmenu(topMenu,tearoff=FALSE)
fileMenu1<-tkmenu(topMenu,tearoff=FALSE)
tkadd(fileMenu,"command",label="Population",command=function() pop() )
tkadd(fileMenu,"command",label="IncrementRatePopulation",command=function() pRate())
tkadd(fileMenu,"command",label="Enrollment",command=function() enroll())
tkadd(fileMenu,"command",label="DropStudent",command=function() DropStud())
tkadd(fileMenu,"command",label="Quit",command=function() tkdestroy(tt))

tkadd(fileMenu1,"command",label="Predict Population",command=function() Prepop())
tkadd(fileMenu1,"command",label="Predict Enrollment",command=function() Preenrol())
tkadd(fileMenu1,"command",label="Predict DropOut",command=function() PreDrop())
tkadd(fileMenu1,"command",label="Predict Infrastructure",command=function() infra())
tkadd(fileMenu1,"command",label="Predict PopulationRate",command=function() PrePopRate())
tkadd(topMenu,"cascade",label="Present",menu=fileMenu)
tkadd(topMenu,"cascade",label="Future",menu=fileMenu1)
#future
year<-0;
Name<-""
EnterYear<-function()
{
 Name <- tclVar("")
 entry.Name <-tkentry(tt,width="20",textvariable=Name)
 tkgrid(tklabel(tt,text="Please enter the year to predict the value."))
 tkgrid(entry.Name)

  #df<-read.csv("pop.csv");
 OK.but <-tkbutton(tt,text="OK",command=OnOK)
 tkbind(entry.Name, "<Return>",OnOK)
 tkgrid(OK.but)
 
 # return(NameVal);
}
OnOK <- function()
{
  NameVal <- tclvalue(Name)
  tkdestroy(tt)
  if(NameVal=="")
  {
    msg <- paste("please enter the year.");
    tkmessageBox(message=msg)
  }
  else if(NameVal<2015)
  {
    msg <- paste("please enter the year more than current year");
    tkmessageBox(message=msg)
    tkdestroy(tt)
  }
}
Prepop<-function()
{
  cat("\nEnter the year")
  year <- scan(what=character(),nmax=1,quiet=TRUE)
  if(year =="")
  {
    msg <- paste("please enter the year.");
    tkmessageBox(message=msg)
  }
  else
  {
  source("predictedPopulation.R",local=FALSE)
  val<-population(as.numeric(year));
  msg <- paste("The predicted values is=",val);
  tkmessageBox(message=msg)
  }
  
}

Preenrol<-function()
{
  cat("\nEnter the year")
  year <- scan(what=character(),nmax=1,quiet=TRUE)
  if(year =="")
  {
    msg <- paste("please enter the year.");
    tkmessageBox(message=msg)
  }
  else
  {
  source("PredictEnrollment.R",local=FALSE)
 val<-PreEnroll(as.numeric(year));
 totalEnroll<-val;
  msg <- paste("The predicted values is=",totalEnroll);
  tkmessageBox(message=msg)
   }
}
PreDrop<-function()
{
  cat("\nEnter the year")
  year <- scan(what=character(),nmax=1,quiet=TRUE)
  if(year =="")
  {
    msg <- paste("please enter the year.");
    tkmessageBox(message=msg)
  }
  else
  {
  source("PredictDropStudent.R",local=FALSE)
  val<-PredictDropStudent(as.numeric(year));
  msg <- paste("The predicted values is=",val);
  tkmessageBox(message=msg)
  }
  
  }
infra<-function()
{
 
  
  cat("\nEnter the year")
  year <- scan(what=character(),nmax=1,quiet=TRUE)
  if(year =="")
  {
    msg <- paste("please enter the year.");
    tkmessageBox(message=msg)
  }
  else
  {
    
  source("predictedPopulation.R",local=FALSE)
  p1<-population(as.numeric(year));
  source("PredictEnrollment.R",local=FALSE)
  totalEnroll<-PreEnroll(as.numeric(year));
  count1<-(p1*totalEnroll)/100;
  if(count1==0)
  {
    msg <- paste("unable to predict");
    tkmessageBox(message=msg)
  }
  else
  {
    #asssuming per student require 5square meter than
    count =count1 * 5;
    msg <- paste("The Area required for the enroled student  in square meter is=",count);
    tkmessageBox(message=msg)
  }
}
}

PrePopRate<-function()
{
  cat("\nEnter the year")
  year <- scan(what=character(),nmax=1,quiet=TRUE)
  if(year =="")
  {
    msg <- paste("please enter the year.");
    tkmessageBox(message=msg)
  }
  else
  {
  source("PredictedPopulationRate.R",local=FALSE)
  val<-populationRate(as.numeric(year));
  msg <- paste("The predicted values is=",val);
  tkmessageBox(message=msg)
  }
}
#present
pop <- function()
{
  source("Population.R",local=FALSE)
  population();

}
pRate<-function()
{
  source("PopulationIncrementRate.R",local=FALSE)
  PopulationRate();
   
}

enroll<-function()
{
  source("Enrollment.R",local=FALSE)
  Enrolment();
}

DropStud<-function()
{
  source("dropStudnet.R",local=FALSE)
  DropStudent();
}

tkfocus(tt)
# Add it to the 'tt' window

