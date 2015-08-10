

loadData <- function() {
	#loading data
	dataS <- read.csv("smallData.txt", header = TRUE, sep=";")
	#data <- read.csv("household_power_consumption.txt", header = TRUE, sep=";")
	data$Date <- as.Date(data$Date, "%d/%m/%Y")
	data$Global_active_power <- as.numeric(data$Global_active_power)
	data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
	data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
	data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
	#data <- data[which(data$Date %in% c(as.Date('2007-02-01'),as.Date('2007-02-02'))),]
	temp <- paste(data$Date, data$Time)
	data$FullDate <- strptime(temp, "%Y-%m-%d %H:%M:%S")
	sapply(data, class)
}
