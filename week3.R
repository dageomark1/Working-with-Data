## loading packages
library(ggplot2)
library(raster)

# load data
data("mtcars")
?mtcars

# Bar chart of cars by number of cylinders using ggplot
ggplot(data = mtcars,aes(factor(cyl))) + #ggplot with a desired data
  geom_bar(fill = 'lightgreen',colour='black',width = 0.4) + #specifying a bar chart
  labs(x = 'Number of cylinders', y = 'Frequency') #Axes labels



# Pie chart of cars by number of cylinders using ggplot

ggplot(mtcars,aes(factor(1), fill = factor(cyl))) +
  geom_bar(width = 1) + # a bar chart
  coord_polar(theta = 'y') + # specifying a pie chart
  labs(x = "", y = "", fill= 'Number of cylinders') #Blank Axes labels



# Histogram of fuel consumption using ggplot
ggplot(data = mtcars,aes(mpg)) + #ggplot with a desired data
  geom_histogram(binwidth = 5, fill = 'lightgreen',colour='black') + #specifying a bar chart
  labs(x = 'Fuel consumption in (mpg)', y = 'Frequency') #Axes labels


# Boxplot  of fuel consumption using ggplot
ggplot(mtcars,aes(x = factor(cyl), y = mpg)) + #ggplot with a desired data
  geom_boxplot(fill = 'lightgreen', colour = 'black') + #specifying boxplot
  labs(x = 'Number of cylinders', y = 'Fuel consumption in (mpg)') #Axes labels



# Violin plots of fuel consumption using ggplot
ggplot(mtcars,aes(x = factor(cyl), y = mpg)) + #ggplot with a desired data
  geom_violin(fill = 'lightgreen', colour = 'black') + #specifying violin plots
  labs(x = 'Number of cylinders', y = 'Fuel consumption in (mpg)') #Axes labels




# Scatter plot of cars weight by fuel consumption using ggplot
ggplot(mtcars,aes(x = wt, y = mpg)) + #ggplot with a desired data
  geom_point( colour = 'red') + #
  labs(x = 'Weight', y = 'Fuel consumption in (mpg)') #Axes labels

## CUSTOMISING plots

# Scatter plot of cars weight by fuel consumption using ggplot
ggplot(mtcars,aes(x = wt, y = mpg, colour = factor(cyl))) + #ggplot with a desired data
  geom_point() + #specifying violin plots
  labs(x = 'Weight', y = 'Fuel consumption in (mpg)',
       colour = 'Number of cylinders') #Axes labels


#
# Scatter plot of cars weight by fuel consumption using ggplot
ggplot(mtcars,aes(x = wt, y = mpg, shape = factor(cyl))) + #ggplot with a desired data
  geom_point(aes(x = wt, y = mpg)) + #specifying violin plots
  labs(x = 'Weight', y = 'Fuel consumption in (mpg)',
       shape = 'Number of cylinders') #Axes labels


# Scatter plot of cars weight by fuel consumption using ggplot
ggplot(mtcars,aes(x = wt, y = mpg, shape = factor(cyl))) + #ggplot with a desired data
  geom_point(aes(x = wt, y = mpg),cex=2, alpha=0.3) + #specifying violin plots
  labs(x = 'Weight', y = 'Fuel consumption in (mpg)',
       shape = 'Number of cylinders') #Axes labels





#


#


#



#



#
#
#
