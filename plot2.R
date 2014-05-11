df<-read.csv("household_power_consumption.txt", sep=';')
sdf<-df[strptime(df$Date, "%d/%m/%Y") >= strptime("2007-02-01", "%Y-%m-%d") & strptime(df$Date, "%d/%m/%Y") <= strptime("2007-02-02", "%Y-%m-%d"), ]
png(file="plot2.png")
plot(strptime(paste(sdf$Date, sdf$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(levels(sdf$Global_active_power))[sdf$Global_active_power], type="l",ylab="Global Active Power (kilowatts)", xlab="" )
dev.off()