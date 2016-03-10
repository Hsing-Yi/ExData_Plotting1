
library(dplyr)
##### Step 1: Data loading

con <- file("C:/Users/user/Documents/datasciencecouresa/household_power_consumption.txt","r")
train_data <- read.table(con, sep = ";" , header = T , 
                           na.strings ="", stringsAsFactors= F)
close(con)


##### Step 2: Filter data -- to save 2007-02-01 and 2007-02-02 data only
date_list <- c("1/2/2007", "2/2/2007")
dp <- train_data[train_data$Date %in% date_list,]
rm(train_data)

##### Step 3: Add date/ time fields

dp <- dp %>% mutate(Date = as.Date(dp$Date, "%d/%m/%Y")) %>% mutate(Time = as.POSIXct(strptime(paste(Date, ' ', Time), '%Y-%m-%d %H:%M:%S')))

  
