library(tidyverse)
library(ggplot2)

plot(diamonds$cut)
x11()

table(diamonds$cut)
hist(diamonds$carat)
min(diamonds$carat)
hist(diamonds$carat,
     breaks = seq(-0.25,5.25,0.5))
