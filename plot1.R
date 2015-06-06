###################################################################
# Coursera - Exploratory Data Analysis (Johns Hopkins University) #
#                         Project 1                               #
###################################################################


#Setting Working Directory
setwd("E:/MOOC/Coursera - Exploratory Data Analysis (Johns Hopkins University)/CourseProject/project1")

#Loading CSV Data File
household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")

#Filtering what we need
limited_HPC=subset(household_power_consumption,Date=="1/2/2007"|Date=="2/2/2007")

#Removing the big one
rm(household_power_consumption)

#Convert to Timestamp
limited_HPC$Date2= strptime(paste(limited_HPC$Date,limited_HPC$Time), "%d/%m/%Y %H:%M:%S")


#Plot 1
#Generate Histogram
png(filename="plot1.png")
hist(limited_HPC$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
dev.off()

#END
