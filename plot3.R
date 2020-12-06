setwd("./")
source("./ReadDATA.R")
# Please see the data preparation code in ReadDATA.R

# Set locale for reproducing correct labels
Sys.setlocale("LC_TIME", "English")

# plot in PNG
png(filename = "plot3.png", width=480, height=480)
with(DATA1, {
  plot(DT,Sub_metering_1, 
       type="l", col="black", 
       xlab = "", ylab = "Energy sub metering"
       )
  points(DT,Sub_metering_2, type="l", col="red")
  points(DT,Sub_metering_3, type="l", col="blue")
  legend("topright",lty=1,
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"),
         )
})
dev.off()