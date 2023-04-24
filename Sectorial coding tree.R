library(collapsibleTree)
Sectors <- read.csv("/Users/egusheva/Library/Mobile Documents/com~apple~CloudDocs/Documents/Work/TU Delft/Publications/SPMs review/Graphs/Coding tree/Data for sectorial coding tree.csv", header = TRUE, sep=";")
head(Sectors)
p <- collapsibleTree(Sectors, c("Level1", "Level2"))
p
