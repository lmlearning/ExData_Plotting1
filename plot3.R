q <- fread("exdata-data-household_power_consumption/household_power_consumption.txt", na.strings = "?")
q2 <- q[Date == "2/2/2007" | Date == "1/2/2007" ,]
q2[, DTIME := paste(Date,Time)]
png("plot3.png")
plot(q2[, strptime(DTIME, format="%d/%m/%Y %H:%M:%S")], q2[,Sub_metering_1], cex.lab = 0.7, cex.axis = 0.7, cex.main = 0.7,type="n", ylab="Energy sub metering", xlab="")
lines(q2[, strptime(DTIME, format="%d/%m/%Y %H:%M:%S")], q2[,Sub_metering_1])
lines(q2[, strptime(DTIME, format="%d/%m/%Y %H:%M:%S")], q2[,Sub_metering_2],col="red")
lines(q2[, strptime(DTIME, format="%d/%m/%Y %H:%M:%S")], q2[,Sub_metering_3],col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1), col=c("black", "red", "blue"), cex =0.7 ) 
dev.off()