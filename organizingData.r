library(tidyverse)
library(palmerpenguins)
#arrange data in ascending order
arrange(penguins,bill_length_mm)
# arranging data in descending order
penguins2 <- penguins %>%
  arrange(-bill_length_mm)
View(penguins2)

penguins %>%
  group_by(island)%>%
  drop_na()%>%
  summarize(meanOf_bill_length_mm = mean(bill_length_mm), max_bill_length_mm = max(bill_length_mm))
#we can filter data with filter function
penguins %>% 
  filter(species == "Gentoo" , island == "Biscoe")%>%
  arrange(-bill_depth_mm)