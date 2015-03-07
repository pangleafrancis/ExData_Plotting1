household_power_consumption <- read.csv2("~/development/ExploratoryDataAnalysis/data/household_power_consumption.txt", sep=";" , na.strings = c("?"), dec = ".")
plot_data <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007", ]
plot_data$DateTime <- strptime(paste(plot_data$Date, plot_data$Time), "%d/%m/%Y %H:%M:%S")

png('plot1.png', width = 480, height = 480)
hist(plot_data$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power") 
dev.off()