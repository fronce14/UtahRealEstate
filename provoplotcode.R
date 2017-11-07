read.csv("zillow2017-10-02_081524.csv")
library(tidyverse)
data("zillow2017-10-02_081524.csv")
zillowprovo <- read.csv("zillow2017-10-02_081524.csv")

ggplot(data = zillowprovo) +
  geom_histogram(aes(fill =..count.., x = price)) +
  scale_fill_gradient("Count", low = "blue", high = "green") +
  labs(title = "Number of Homes For Sale in Provo and Their Prices", x = "", y = "") +
  theme_bw() + 
  scale_x_continuous(labels = scales::dollar, limits = c(100000, 900000)) +
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_blank(), legend.position = "none")
  
  
  
