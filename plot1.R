dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";")
hist(x=as.numeric(data$Global_active_power))
class(data$Global_active_power)
subD <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot1.png", width=480, height=480)
hist(as.numeric(subD$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
