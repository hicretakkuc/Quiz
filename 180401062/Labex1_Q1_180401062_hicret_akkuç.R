url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")

maps <- read.csv("180401062/MapsThatChangedOurWorld_StoryMap_Data.csv",sep=";")

maps$Latitude <- gsub("N", "", as.character(maps$Latitude))
