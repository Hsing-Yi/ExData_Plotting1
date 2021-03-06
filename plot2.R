source('load_data.R')
Sys.setlocale("LC_TIME", "English")

png(filename='plot2.png', width=480, height=480, units='px')

plot(dp$Time, as.numeric(dp$Global_active_power),  
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)" 
     )

dev.off()

