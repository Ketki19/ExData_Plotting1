df <- "household_power_consumption.txt"
data <- read.table(df, header=TRUE, sep=";")

subD <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subD$Date, subD$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(subSetData$Global_active_power)

png("plot3.png", width=480, height=480)
plot(datetime, as.numeric(subD$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime, as.numeric(subD$Sub_metering_2), type="l", col="red")
lines(datetime, as.numeric(subD$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
