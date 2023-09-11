library(collapsibleTree)
Themes <- read.csv("/Users/egusheva/Library/Mobile Documents/com~apple~CloudDocs/Documents/Work/TU Delft/Publications/SPMs review/Method/Trends analysis and comparison/Graphs/Coding tree/Data for thematic coding tree.csv", header = TRUE, sep=";")
head(Themes)
p <- collapsibleTree(Themes, c("Level1", "Level2", "Level3", "Level4"))
p
