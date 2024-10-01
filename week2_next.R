###### Use of tidyverse format
library(tidyverse)
library(dplyr)
?iris

filter(iris,Species=='versicolor')

# sort by rows
arrange(iris,Species,Sepal.Length)




########################### HIV data ##########
HIV <- read.csv('indicator hiv estimated prevalence% 15-49.csv')
library(tidyverse)
str(HIV)

## rename Estimated.HIV.Prevalence.....Ages.15.49 to Country
HIV_rename <- HIV %>%
  rename(Country= 'Estimated.HIV.Prevalence.....Ages.15.49.')

head(HIV_rename)
HIV_rename <- HIV_rename %>%
  gather(key = year,value = prevalence,-Country)
str(HIV_rename)

## convert year as numeric
HIV_rename <- HIV_rename %>%
  mutate(year=as.numeric(year))


HIV_rename %>%
  group_by(Country) %>%
  summarise(MeanPrevalence = mean(prevalence)) %>%
  mutate(MeanPrevalence=round(MeanPrevalence,1)) %>%
  head()



##