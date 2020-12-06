setwd("./")

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL,destfile = "./DATA.zip")
unzip("./DATA.zip",overwrite = TRUE)

library(readr)
DATA <- read_delim("household_power_consumption.txt", ";", 
                   escape_double = FALSE, na = "?",
                   trim_ws = TRUE)

library(lubridate)
DATA$Date <- dmy(DATA$Date)

library(dplyr)
DATA1 <- filter(DATA, Date=="2007-02-01" | Date=="2007-02-02")
DATA1$DT <- paste(DATA1$Date,DATA1$Time) %>% as.POSIXct()
mutate(DATA1,wd=wday(DATA1$DT))

rm(DATA)