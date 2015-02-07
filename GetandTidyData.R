#load all data
power <- read.table("household_power_consumption.txt",
                   header = TRUE,sep = ";",na.strings = "?")

#subset to relevant data
power<- subset(power, Date %in% c('1/2/2007','2/2/2007'))

#create new Timestamp field
power$Timestamp <- strptime(paste(power$Date, power$Time),  format = "%d/%m/%Y %H:%M:%S")

#updating column order
power <- power[, c(10,3,4,5,6,7,8,9)]