Data<-read.csv("~/Documents/Exploratory data analysis/household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data.subset<-Data[Data$Date %in% c("1/2/2007", "2/2/2007"), ]

date.time<-strptime(paste(data.subset$Date, data.subset$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png", height=480, width=480)

plot(date.time, data.subset$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(date.time, data.subset$Sub_metering_2, type="l", col="red")
lines(date.time, data.subset$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), cex=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()