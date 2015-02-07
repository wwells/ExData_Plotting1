png("plot2.png", height = 480, width = 480)
with(power,plot(power$Timestamp, power$Global_active_power, 
                type = "l", xlab = "",
                ylab = "Global Active Power (kilowatts)"))
dev.off()