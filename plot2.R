plot2 <- function() {
     
     file <- 'household_power_consumption.txt'
     
     data <- read.csv2(file, stringsAsFactors=F)
     data <- subset(data, data$Date == '1/2/2007' | data$Date == '2/2/2007')
     
     data$Date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
     class(data$Global_active_power) <- "numeric"
     
     png(filename="plot2.png", width=480, height=480, units="px")
     
     plot(data$Date, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
     
     dev.off()
}