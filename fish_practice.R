.libPaths("C:/RLibrary") # set library path
library(tidyverse)
source("R/Personal_Themes.R") # automatically adds personal themes to environment

fish <- read_csv("data/Gaeta_etal_CLC_data.csv") # load fish data

# add column with distinction based on length >=300
fish <- fish %>%
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small"))

head(fish)
