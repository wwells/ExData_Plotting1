png("plot1.png", height = 480, width = 480)
hist(power$Global_active_power, main = "Global Active Power",
     col = "red", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.off()