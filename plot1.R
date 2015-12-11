Data<-read.csv("~/Documents/Exploratory data analysis/household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data.subset<-Data[Data$Date %in% c("1/2/2007", "2/2/2007"), ]

hist(data.subset$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()