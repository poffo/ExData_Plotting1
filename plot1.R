#plot1.R

plot1 <- function() {
	source("prepareData.R")
	data <- loadData()

	png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
     bg = "white")

	#creating plot1
	hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col=c("Red"), breaks = 13,xlim=c(0,6))

	dev.off()
}
