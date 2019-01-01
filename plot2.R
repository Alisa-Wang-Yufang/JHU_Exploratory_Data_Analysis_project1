# Plot 2
# convert data and time to specific format
consumption$Date <- as.Date(consumption$Date, format = '%d/%m/%Y')
consumption$DateTime <- as.POSIXct(paste(consumption$Date, consumption$Time))
# open device
png(filename = './plot20.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(consumption$DateTime, consumption$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()