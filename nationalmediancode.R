read.csv("housing.csv")
library(tidyverse)
library(ggplot2)
library(reshape2)
require(scales)
data("housing.csv")

housingbar <- read.csv('housing.csv')

ggplot(data=housingbar, aes(x=Location, y=Price, fill=Location, width = .6)) + 
  geom_bar(colour="black", stat="identity", fill=("grey"),
           size=.15) +                        # Thinner lines
  scale_y_continuous(labels = scales::dollar) +     # This fixes the scientific notation
  # scale_fill_hue(name="Location") +      # Set legend title
  xlab("") + ylab("") +       # Set axis labels
  ggtitle("How Utah Home Prices Stack Up to the National Median") +   # Set title
  guides(fill = FALSE) +
  theme_bw() +
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_blank())

