## set working directory
setwd("~/COURSERA/DATA SCIENCE/4. Exploratory Data Analysis/Project 1/exdata_data_household_power_consumption")

## Load data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

## Look at the data
head(data)

## Date and Time
subSetData <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

## Creating the Histogram
GlobalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(GlobalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()