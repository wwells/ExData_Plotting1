png("plot4.png", height = 480, width = 480)
#setup multiple vectors for plots
par(mfcol= c(2,2), mar = c(4,4,2,1))
#plot 1
with(power,plot(power$Timestamp, power$Global_active_power, 
                type = "l", xlab = "",
                ylab = "Global Active Power (kilowatts)"))
#plot 2
plot(power$Timestamp, power$Sub_metering_1, type = "n", 
     xlab = "",
     ylab = "Energy sub metering")

#plot 3
points(power$Timestamp, power$Sub_metering_1, col = "black", type = "l")
points(power$Timestamp, power$Sub_metering_2, col = "red",type = "l")
points(power$Timestamp, power$Sub_metering_3, col = "blue", type = "l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", lty = 1, col = c("black", "red", "blue"))
with(power, plot(power$Timestamp, Voltage,
                 type = "l",
                 xlab = " datetime"))

#plot 4
with(power, plot(power$Timestamp, Global_reactive_power,
                 type = "l",
                 xlab = " datetime"))

dev.off()