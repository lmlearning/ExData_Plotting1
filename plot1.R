

q <- fread("exdata-data-household_power_consumption/household_power_consumption.txt", na.strings = "?")
q2 <- q[Date == "2/2/2007" | Date == "1/2/2007" ,]
png("plot1.png")
hist(q2[Global_active_power != "?",as.numeric(Global_active_power)], cex.lab = 0.7, cex.axis = 0.7, cex.main = 0.7, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()