png("plot3.png", height = 480, width = 480)
plot(power$Timestamp,power$Sub_metering_1, type = "l", 
     xlab = "",ylab = "energy sub metering")
lines(power$Timestamp,power$Sub_metering_2, type = "l", 
      xlab = "",ylab = "energy sub metering", col = "red")
lines(power$Timestamp,power$Sub_metering_3, type = "l", 
      xlab = "",ylab = "energy sub metering", col = "blue")
legend("topright",lwd=1,col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2",
                  "Sub_metering_3"))
dev.off()