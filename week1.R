## Use of semicolon to allow multiple commands on the same line
10 + 5 * 3; sin(10)

## calculate the hypotenuse
## from a right-angled triangle
## with the two other sides
## equal to 3 and 4

sqrt(3^2 + 4^2)

library(ggplot2)
library(carData)

Mcar <- mtcars
Mcar
str(Mcar)
P1 <- ggplot(Mcar, aes(mpg))+ geom_histogram(binwidth = 5, colour= "black", fill="green")
P1
p2 <- P1 + geom_vline(xintercept = mean(Mcar$mpg), col = "blue", size = 1 ) 
p2





