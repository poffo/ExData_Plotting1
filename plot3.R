#plot3.R

plot3 <- function() {
	source("prepareData.R")
	data <- loadData()

	png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
     bg = "white")

	#creating plot3
	plot(data$FullDate, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
	points(data$FullDate, data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
	points(data$FullDate, data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
	legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

	dev.off()
}
