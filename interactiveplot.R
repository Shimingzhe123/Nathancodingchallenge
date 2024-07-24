library(ggplot2)
library(dygraphs)
library(dplyr)
library(tidyverse)

# The interferce of the people

people <- readRDS("people.rds")

# Present this data is dygraphs
# Are there any ways i can make this data interactive?

people %>%
  dygraph() %>%
  dyRangeSelector()

people <- 