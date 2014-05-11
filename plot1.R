df<-read.csv("household_power_consumption.txt", sep=';')
sdf<-df[strptime(df$Date, "%d/%m/%Y") >= strptime("2007-02-01", "%Y-%m-%d") & strptime(df$Date, "%d/%m/%Y") <= strptime("2007-02-02", "%Y-%m-%d"), ]
png(file="plot1.png")
hist(as.numeric(levels(sdf$Global_active_power))[sdf$Global_active_power], breaks = 15, col="red", xlab="Global Active Power (kilowatts)", ylab = "Frequency", main="Global Active Power")
dev.off()