df <- "household_power_consumption.txt"
data <- read.table(df, header=TRUE, sep=";")

subD <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subD$Date, subD$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(subD$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
