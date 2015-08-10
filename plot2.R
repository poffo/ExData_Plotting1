#plot2.R

plot2 <- function() {
	source("prepareData.R")
	data <- loadData()

	png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
     bg = "white")

	#creating plot2
	with(data, plot(FullDate, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

	dev.off()
}
