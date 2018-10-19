.libPaths("C:/RLibrary") # set library path
library(tidyverse)
source("R/Personal_Themes.R") # automatically adds personal themes to environment

fish <- read_csv("data/Gaeta_etal_CLC_data.csv") # load fish data

fish <- fish %>%
  mutate(length_cat = case_when(length >= 200 ~ "big",
                                length < 200 ~ "small"))

