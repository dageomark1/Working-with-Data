set.seed(1234)
x <- c(sample(1:10,size = 7,replace = T), rep(NA,3))
x

mean(x)

## get the mean by removing the NA
mean(x,na.rm = T)

# standard deviation
sd(x,na.rm = T)/sqrt(sum(!is.na(x)))

### now let's impute several times
#This takes the elements of x that are not missing and adds on
#3 randomly chosen x values to replace the missing values.It
#does this 5 times and saves the resultas 'imp'

imp <- replicate(5,c(x[!is.na(x)],sample(x[!is.na(x)],3,TRUE)),simplify = F)

imp

## this calculate Q bar, by using sapply to take a mean of each list
## element of 'imp' and then taking the mean of those means

qbar <- mean(sapply(X = imp,FUN = mean))

qbar

### This calculates the within variance,denoted Vbar above
within.var <- (1/5)*sum((sapply(imp,sd)/sqrt(10))^2)

within.var

# this calculate the between variance, denoted B above
between.var <- (1/4)*sum((sapply(imp,mean)-qbar)^2)

# this calculate T
bigt <- within.var + (1+(1/5))*between.var
bigt

# this calculate the standard error of T
sebigt <- sqrt(bigt)
sebigt

# lapply and lists
lapply(1:3,function(x)x^2)


##
n <- c(2,3,5)
s <- c("aa","bb","cc","dd","ee")
b <- c(TRUE,FALSE,TRUE,FALSE,FALSE)
x <- list(n,s,b,3) #x contains copies of n,s,b
x
x[1]
x[2]
x[3]
x[c(2,4)]
##

## Creating a matrix of means
library(Amelia)
coefs.imp <- imp %>%  # begin wit our imputed data list object
  sapply(mean) %>%  # pipe it into sapply and take the mean of each element
  matrix() # pipe it into a matrix

# Creating a matrix of standard errors
ses.imp <- imp %>% # begin wit our imputed data list object
  sapply(sd) %>%  #  pipe it into sapply and take the standard deviation of each element
  '/'(sqrt(10)) %>%  # divide by the square root of 10 to get the standard errors
  matrix()  # make it matrix
mi.meld(coefs.imp,ses.imp)


################### Exercise ########################
data("africa")
summary(africa)

#

regr_model<-lm(gdp_pc ~ civlib+ trade, data=africa)
summary(regr_model)

#
imp_amelia <- amelia(africa,m=5,idvars = 'country',logs = 'gdp_pc',p2s = 1)







#




#

#



##







#



#