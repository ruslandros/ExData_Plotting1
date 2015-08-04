
## Project 1

data <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt",  sep = ";", na.strings = "?", header = TRUE)
d1 <- data[data$Date == "1/2/2007", ]
d2 <- data[data$Date == "2/2/2007", ]

my_data <- rbind(d1, d2)
hist(my_data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

#View(data)

#library(dplyr)
#d1 <- tbl_df(data)