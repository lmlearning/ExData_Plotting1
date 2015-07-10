
q <- fread("exdata-data-household_power_consumption/household_power_consumption.txt", na.strings = "?")
q2 <- q[Date == "2/2/2007" | Date == "1/2/2007" ,]
q2[, DTIME := paste(Date,Time)]
png("plot2.png")
plot(q2[, strptime(DTIME, format="%d/%m/%Y %H:%M:%S")], q2[,Global_active_power], cex.lab = 0.7, cex.axis = 0.7, cex.main = 0.7, type="n", ylab="Global Active Power (kilowatts)", xlab="")
lines(q2[, strptime(DTIME, format="%d/%m/%Y %H:%M:%S")], q2[,Global_active_power])
dev.off()