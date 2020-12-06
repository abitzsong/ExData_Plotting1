setwd("./")
source("./ReadDATA.R")
# Please see the data preparation code in ReadDATA.R

# plot in PNG
png(filename = "plot1.png", width=480, height=480)
with(DATA1,hist(Global_active_power, col="red",
                xlab = "Global Active Power (kilowatts)",  
                main = "Global Active Power"))
dev.off()