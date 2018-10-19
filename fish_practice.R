.libPaths("C:/RLibrary") # set library path
library(tidyverse)
library(harrypotter)
source("R/Personal_Themes.R") # automatically adds personal themes to environment

fish <- read_csv("data/Gaeta_etal_CLC_data.csv") # load fish data

# add column with distinction based on length >=200
fish <- fish %>%
  mutate(length_cat = case_when(length >= 200 ~ "big",
                                length < 200 ~ "small"))

head(fish)

# create histogram fo scalelength with fill color is by lentgh_cat and a facet_wrap also by length_cat with personal theme

ggplot() +
  geom_histogram(data = fish, aes(x = scalelength, fill = length_cat)) +
  facet_wrap(~ length_cat) +
  theme_britt() +
  scale_fill_hp(discrete = TRUE, house = "slytherin")

