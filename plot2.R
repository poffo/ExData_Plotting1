#plot2.R

plot2 <- function() {
	source("prepareData.R")
	loadData()

	#creating plot2
	pdf(file="plot2.pdf")
	with(data, plot(FullDate, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
	dev.off()
}
