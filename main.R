# Library
library(ggplot2)

# Create dummy data
data <- data.frame(
  x=seq(10,100),
  y=seq(10,100)/2+rnorm(90)
)

# Make the plot
ggplot(data, aes(x=x, y=y)) +
  geom_line() +
  scale_y_log10(breaks=c(1,5,10,15,20,50,100), limits=c(1,100))