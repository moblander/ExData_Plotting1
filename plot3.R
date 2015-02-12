plot3 <- function() {
     
     file <- 'household_power_consumption.txt'
     
     data <- read.csv2(file, stringsAsFactors=F)
     data <- subset(data, data$Date == '1/2/2007' | data$Date == '2/2/2007')
     
     data$Date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
     class(data$Sub_metering_1) <- "numeric"
     class(data$Sub_metering_2) <- "numeric"
     class(data$Sub_metering_3) <- "numeric"
     
     png(filename="plot3.png", width=480, height=480, units="px")
     
     plot(data$Date, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
     
     points(data$Date, data$Sub_metering_2, type="l", col="red")
     
     points(data$Date, data$Sub_metering_3, type="l", col="blue")
     
     legend (
          "topright"
          , lty=1
          , col=c("black","red","blue")
          , legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
     )
     
     dev.off()
}