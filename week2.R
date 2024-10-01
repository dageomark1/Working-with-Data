library(ggplot2)
Drugs <- c(2.0,4.0,6.2,8.0,8.0,8.0,12.0,15.0,15.0,18.0,18.2,20.0,20.0,20.0,
           21.0,22.0,24.2,27.0,27.0,27.0,28.0,29.7,29.7,29.7,29.7,29.7,30.0,
           30.0,31.0,41.4,42.3,45.4,45.4,45.4,45.4,45.4,45.4,45.4,45.4,45.4,
           49.4,50.8,51.4,53.4,56.0,57.0,57.4,59.0,59.4,60.0,61.5,65.4,65.4,
           65.4,65.4,67.0,90.8,92.0,94.0,94.0,94.0,94.0,94.0,94.0,94.7,105.0,
           125.0,126.0,130.0,130.0,130.0,151.2,160.0,177.0,187.0,187.0,194.4,
           194.4,194.4,212.4,213.0,233.0,267.0,320.4)

Drugs

plot(density(x = Drugs))
hist(Drugs)

min(Drugs)

quantile(Drugs,probs = 0.25)

median(Drugs)

quantile(Drugs,probs = 0.75)

max(Drugs)

mean(Drugs)

sum(Drugs)/length(Drugs)

var(Drugs)

sum((Drugs-mean(Drugs))^2)/(length(Drugs)-1)

###################################################
library(foreign)

summary(Drugs)

data.frame(Drugs)
data()

########## ACTIVITY #################

a<-c(1,2,3,4,5)

b<-c(-2,-4,6,7,6)

c <- c(2, 3, 1, 6, -1)

mydata <- data.frame(a,b,c)

nrow(mydata)

ncol(mydata)

str(mydata)

head(mydata)

#creating a new variable
mydata$atimesb <- mydata$a*mydata$b
str(mydata)

# extraction using subset function
subset(mydata,b==6)

## Summarizing data

drugclass<-c("A","C","C","C","A","A","A","B","A","B","B","B","B","A","A","A","B",
             "A","A","A","C","A","B","B","C","A","C","A","C","A","B","C","C","B",
             "B","A","C","B","A","B","B","A","A","C","B","B","A","B","C","C","B",
             "A","C","B","C","A","B","C","C","C","A","A","A","C","B","A","A","B",
             "C","A","B","A","A","B","C","C","A","A","C","C","A","B","C","C")





##Categorizing quantitative data
drugcost <- Drugs

drugcostcat <- cut(drugcost, # Data to be categorized
          breaks = c(0,50,100,200,max(drugcost)), # Breaks for the categories
          labels = c('Low','Medium','High','Very High')) # Category name

D <- data.frame(drugcost,drugclass,drugcostcat)





