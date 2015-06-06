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


#Plot 2

#Label on X axis was not exactly the same as required because I use French Environnement
#Tried to tackle the issue with Sys.setenv(LANGUAGE="en_US.utf8"), but plot remain the same
#Sys.setlocale(category = "LC_TIME", locale="en_GB.utf8") doesn't work also (windows complains that local cannot be honored)

png(filename="plot2.png")
plot(limited_HPC$Date2,limited_HPC$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
  
#END

