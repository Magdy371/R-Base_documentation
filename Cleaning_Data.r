library(here)
library(skimr)
library(janitor)
library(dplyr)
library(palmerpenguins)
#give us a ver a comprehensive summary of our data set
skim_without_charts(penguins)
#show us a summary of the data
glimpse(penguins)
#give us the first few rows of our data set
head(penguins)
# make named columns in the stander way
clean_names(penguins)

penguins %>%
  #if we want to select the species column 
  select(species)
penguins %>%
  # if we want to select all columns unless species column
  select(-species)%>%
  #rename function used to rename columns
  rename(island_new = island , year_mt = year)%>%
  #used to make column names more consistent
  rename_with(toupper)
  