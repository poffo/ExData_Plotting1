#plot4.R

plot4 <- function() {
	source("prepareData.R")
	data <- loadData()

	png(filename = "plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
     bg = "white")

	#creating plot4
	par(mfrow = c(2, 2))

	# plot 1 (NW)
	plot(data$FullDate, data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
	# plot 2 (NE)
	plot(data$FullDate, data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
	# plot 3 (SW)
	plot(data$FullDate, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
	points(data$FullDate, data$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", col = "red")
	points(data$FullDate, data$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", col = "blue")
	legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )
	# plot 4 (SE)
	plot(data$FullDate, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))
	
	dev.off()
}
