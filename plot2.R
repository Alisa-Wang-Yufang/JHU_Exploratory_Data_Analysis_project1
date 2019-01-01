# Plot 2
# convert data and time to specific format
consumption$Date <- as.Date(consumption$Date, format = '%d/%m/%Y')
consumption$DateTime <- strptime(paste(consumption$Date, consumption$Time),"%Y-%m-%d %H:%M:%S")
# open device
png(filename = './plot2.png', width = 480, height = 480, units='px')
# plot figure
plot(consumption$DateTime, consumption$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()
