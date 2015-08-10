#plot1.R

plot1 <- function() {
	source("prepareData.R")
	loadData()

	#creating plot1
	pdf(file="plot1.pdf")
	hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col=c("Red"), breaks = 13,xlim=c(0,6))
	dev.off()	
}
