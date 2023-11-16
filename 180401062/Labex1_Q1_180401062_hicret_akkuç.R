url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")

maps <- read.csv("180401062/MapsThatChangedOurWorld_StoryMap_Data.csv",sep=";")

maps$Latitude <- gsub("N", "", as.character(maps$Latitude))

idx <- which(grepl("W", maps$Longitude))

maps$Longitude <- gsub("E","",maps$Longitude)
maps$Longitude <- gsub("W","",maps$Longitude)
maps$Longitude <- as.character(maps$Longitude)

maps$Year <- gsub("AD","",maps$Year)
maps$Year <- as.numeric(maps$Year)


maps$Latitude <- as.numeric(maps$Latitude)
maps$Longitude <- as.numeric(maps$Longitude)
