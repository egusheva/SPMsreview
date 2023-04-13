# libraries
library(tidyverse)
library(treemap)
library(sunburstR)

# Load dataset
data <- read.csv("/Users/egusheva/Library/Mobile Documents/com~apple~CloudDocs/Documents/Work/TU Delft/Publications/SPMs review/Graphs/Sunburst plot/Data for AR5 themes.csv", header=TRUE, sep=";")
data[ which(data$value==-1),"Absolutecount"] <- 1
colnames(data) <- c("Level1", "Absolutecount")
data

# Reformat data for the sunburstR package
data <- data %>%
  filter(Level1 != "") %>%
  mutate(path = paste(Level1, sep="-")) %>%
  dplyr::select(path, Absolutecount)
data

# Plot
p <- sunburst(data, legend=FALSE)
p
