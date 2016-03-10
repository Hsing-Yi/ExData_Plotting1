source('load_data.R')

Sys.setlocale("LC_TIME", "English")

png(filename='plot4.png', width=480, height=480, units='px')

par(mfrow=c(2,2))

### Plot 1

plot(dp$Time, as.numeric(dp$Global_active_power),  
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)" 
)

### Plot 2

plot(dp$Time, as.numeric(dp$Voltage),  
     type="l",
     xlab="datetime",
     ylab="Voltage" 
)

### Plot 3

# First create an plot, only one line
plot(dp$Time, as.numeric(dp$Sub_metering_1), 
     type="l",
     xlab="",
     ylab="Energy sub metering" 
)

# Add another two lines
lines(dp$Time, dp$Sub_metering_2, col="red")
lines(dp$Time, dp$Sub_metering_3, col="blue")

# Add legend
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty=c(1, 1, 1))


### Plot 4

plot(dp$Time, as.numeric(dp$Global_reactive_power),  
     type="l",
     xlab="datetime",
     ylab="Global Reactive Power" 
)

dev.off()