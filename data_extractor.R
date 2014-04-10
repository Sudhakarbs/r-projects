## Sample data extractor
getwd()
setwd("/Users/sudhakar/documents/r-projects")

## Create a folder to store the data
if (!file.exists("data")){
  dir.create("data")
}

## extracting Baltimore city traffic data and storing a local copy
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile ="/Users/sudhakar/documents/r-projects/data/camera.csv", method ="curl")
list.files("./data")

## downloaded date
dataDownloaded <- date()
dataDownloaded

##Reading the data
cameraData <- read.table("./data/camera.csv", sep = ",", header = TRUE)
cameraData
head(cameraData)
