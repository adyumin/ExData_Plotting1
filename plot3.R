df<-read.csv("household_power_consumption.txt", sep=';')
sdf<-df[strptime(df$Date, "%d/%m/%Y") >= strptime("2007-02-01", "%Y-%m-%d") & strptime(df$Date, "%d/%m/%Y") <= strptime("2007-02-02", "%Y-%m-%d"), ]
png(file="plot3.png")
plot(strptime(paste(sdf$Date, sdf$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(levels(sdf$Sub_metering_1))[sdf$Sub_metering_1], type="l", ylab="Energy sub metering", xlab="")
points(strptime(paste(sdf$Date, sdf$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(levels(sdf$Sub_metering_2))[sdf$Sub_metering_2], type="l", col="red")
points(strptime(paste(sdf$Date, sdf$Time), "%d/%m/%Y %H:%M:%S"), sdf$Sub_metering_3, type="l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)
dev.off()