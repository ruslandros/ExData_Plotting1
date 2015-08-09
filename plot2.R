
#
## Project 1 : Exploratory Data Analysis Course
## plot2.R
#
## This is the script for the Exploratory Data Analysis Course Project 1 Assignment.
#
## 1. The script will first read the "Individual household electric power consumption Data Set"
## at 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
## The zipped data is downloaded and unzipped manually on the local machine.
#
## The data used for this assignment is from the dates 2007-02-01 and 2007-02-02.
## 2. The script will load all the data and then select the data from the dates above.
#
## 3. The script will plot the required graph and write it to a PNG type format 
##    file named plot2.png
#

## read all the datasets from text file

data1 <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt",  sep = ";", na.strings = "?", header = TRUE)

## select only data which dates equal to 2007-02-01

d1 <- data1[data1$Date == "1/2/2007", ]

## select only data which dates equal to 2007-02-02

d2 <- data1[data1$Date == "2/2/2007", ]

## combine these two datasets

my_data <- rbind(d1, d2)

## for this graph, need to combine the date and time columns

x <- paste(my_data$Date, my_data$Time)

## reformat the datetime parameter

y <- strptime(x, "%d/%m/%Y %H:%M:%S")

## combine this column to the selected datasets
z <- cbind(my_data, y)

## plot the graph to PNG file plot2.png

png(file="plot2.png", width=480, height=480)
plot(z$y, z$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()
