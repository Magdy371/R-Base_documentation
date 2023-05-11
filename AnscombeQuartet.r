library(Tmisc)
library(datasauRus)
library(tidyverse)
data(quartet)
#View(quartet)
#skim_without_charts(quartet)
quartet %>%
  group_by(set)%>%
  summarize(mean_x = mean(x) , standardeviation_X = sd(x),mean_y = mean(y),
            standardeviation_Y = sd(y),cor(x,y))
ggplot(quartet, aes(x,y))+ geom_point() + 
  geom_smooth(method=lm,se = FALSE)+facet_wrap(~set)
# Data sauRus creates plots with Anscombe data in different shapes
