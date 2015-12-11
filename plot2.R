Data<-read.csv("~/Documents/Exploratory data analysis/household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data.subset<-Data[Data$Date %in% c("1/2/2007", "2/2/2007"), ]

date.time<-strptime(paste(data.subset$Date, data.subset$Time), "%d/%m/%Y %H:%M:%S")


plot(date.time, data.subset$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()