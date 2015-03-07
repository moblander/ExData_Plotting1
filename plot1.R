plot1 <- function() {
     
     file <- 'household_power_consumption.txt' 
     
     data <- read.csv2(file, stringsAsFactors=F)
     data <- subset(data, data$Date == '1/2/2007' | data$Date == '2/2/2007')
     
     class(data$Global_active_power) <- "numeric"
     
     png(filename="plot1.png", width=480, height=480, units="px")
     
     hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
     
     dev.off()
}