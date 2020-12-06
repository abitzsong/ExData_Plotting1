setwd("./")
source("./ReadDATA.R")
# Please see the data preparation code in ReadDATA.R

# Set locale for reproducing correct labels
Sys.setlocale("LC_TIME", "English")

# plot in PNG
png(filename = "plot2.png", width=480, height=480)
with(DATA1, plot(DT,Global_active_power, 
                 type="l", 
                 xlab = "", 
                 ylab = "Global Active Power (kilowatts)"))
dev.off()