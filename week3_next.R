 # Exercise

library(ggplot2)
library(datasets)
library(raster)
data(iris)

# Plot 1

## Scatter plot of Sepal.width and Sepal.length using ggplot
ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width))+
  geom_point(colour= 'red') + # scatter plot
  geom_smooth(method = 'lm') + #Indicating we want to add a linear trend to the plot
  labs(title = 'Scatter plot of Sepal width by Sepal length', x='Sepal Width',
       y='Sepal Length')

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
ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width))+
  geom_point() + # scatter plot
  geom_smooth(method = 'lm') + #Indicating we want to add a linear trend to the plot
  labs(title = 'Scatter plot of Sepal width by Sepal length', x='Sepal Length',
       y='Sepal Width') + 
  facet_grid(.~Species) +
  scale_color_manual(values=wes_palette(n=3, name="Royal1"))




## Plot 3
library(GGally)
names(iris)
ggpairs(iris[,-5],title = "Anderson's Iris Data −− 3 species",
        aes(colour = iris$Species))

?ggpairs


##