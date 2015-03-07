household_power_consumption <- read.csv2("~/development/ExploratoryDataAnalysis/data/household_power_consumption.txt", sep=";" , na.strings = c("?"), dec = ".")
plot_data <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007", ]
plot_data$DateTime <- strptime(paste(plot_data$Date, plot_data$Time), "%d/%m/%Y %H:%M:%S")

png('plot3.png', width = 480, height = 480)
plot(x = plot_data$DateTime, y = plot_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering", ylim = c(0,40))
lines(x = plot_data$DateTime, y = plot_data$Sub_metering_2, col = "red")
lines(x = plot_data$DateTime, y = plot_data$Sub_metering_3, col = "blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
