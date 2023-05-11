library(ggplot2)
library(tidyverse)
library(palmerpenguins)
data("penguins")
View(drop_na(penguins))
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g))