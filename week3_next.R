 # Exercise

library(ggplot2)
library(datasets)
library(raster)
data(iris)

###############################################
# Plot 1

## Scatter plot of Sepal.width and Sepal.length using ggplot
ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width))+
  geom_point(colour= 'red') + # scatter plot
  geom_smooth(method = 'lm') + #Indicating we want to add a linear trend to the plot
  labs(title = 'Scatter plot of Sepal width by Sepal length', x='Sepal Width',
       y='Sepal Length')

#######################################################
library(wesanderson)
#library(RColorBrewer)
## Scatter plot of Sepal.width and Sepal.length using ggplot
ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width))+
  geom_point() + # scatter plot
  geom_smooth(method = 'lm') + #Indicating we want to add a linear trend to the plot
  labs(title = 'Scatter plot of Sepal width by Sepal length', x='Sepal Length',
       y='Sepal Width') +
  scale_color_manual(values=wes_palette(n=3, name="Royal1"))




## plot2
ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width,colour = Species))+
  geom_point() + # scatter plot
  geom_smooth(method = 'lm') + #Indicating we want to add a linear trend to the plot
  labs(title = 'Scatter plot of Sepal width by Sepal length', x='Sepal Length',
       y='Sepal Width') + 
  facet_grid(.~Species) +
  scale_colour_manual(values=wes_palette(n=3, name="GrandBudapest1"))



#########################################################
## Plot 3
library(GGally)
names(iris)
ggpairs(iris[,-5],title = "Anderson's Iris Data −− 3 species",
        aes(colour = iris$Species))

?ggpairs

#################################################################

######################### Analysis task #########################
library(tidyverse)
library(magrittr)
library(knitr)

#### all in one to combine and create the gender variable based on their ID's
mw <- bind_rows(
  read_csv('data9b_men.csv') %>% mutate(gender = 'Male'),
  read_csv('data9b_women.csv') %>% mutate(gender = 'Female')
)

str(mw)
head(mw)


#
library(gtsummary)
tbl_summary(mw[-1],by = gender ) |>
  add_overall(last=T) |>
  add_p(test= all_continuous()~'t.test')


#
library(ggplot2)
library(wesanderson)
ggplot(mw,aes(x = steps,y = bmi))+
  geom_point() + # scatter plot
  geom_smooth(method = 'lm') + #Indicating we want to add a linear trend to the plot
  labs(title = 'Scatter plot of steps by mbi', x='Steps',
       y='BMI') + 
  facet_grid(.~gender) +
  scale_colour_manual(values=wes_palette(n=3, name="Royal1"))

###
library(readr)
men <- read_csv('data9b_men.csv')
women <- read_csv('data9b_women.csv')

head(men)
head(women)
men_gender <- men %>%
  mutate(gender = 'Male')
#
women_gender <- women |>
  mutate(gender = 'Male')

### combination of the two datasets
mw <- rbind(x = men_gender,y = women_gender)

head(mw$gender)

#mw <- mw |>
 # mutate(gender = case_when(
  #ID == c('men_id') ~ "Male",   # Add all male IDs here
  #ID == c('women_id') ~ "Female",  # Add all female IDs here
#))

#
str(mw)
head(mw)




########################################################

################# Formative coursework2 ###########
library(tidyverse)
library(magrittr)
library(knitr)
library(ggplot2)
anim <- read_csv('Animals.csv') %>%
  rename(Weight='x',Height='y',Species='z') %>% # Rename variables x,y,z
  mutate(Species=fct_recode(Species,Ostrich='a', Deer='b', Bear= 'c',
                            Giant_tortoise= 'd')) %>% #Rename the levels of "Species"
  mutate(anim,MBI=Weight/Height^2)  # create a new variable called BMI
  

  
##
head(anim)
ggplot(anim,aes(x = Height,y = Weight)) +
  geom_point()

###
ggplot(anim,aes(x = Height,y = Weight)) +
  geom_point() +
  facet_grid(.~Species) +
  scale_colour_manual(values=wes_palette(n=3, name="Royal1"))
