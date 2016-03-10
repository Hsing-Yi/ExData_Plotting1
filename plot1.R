source('load_data.R')

png(filename='plot1.png', width=480, height=480, units='px')

hist(as.numeric(dp$Global_active_power), main = "Global Active Power", 
     xlab = "Global Active Power (kilowatt)", col="red")

dev.off()