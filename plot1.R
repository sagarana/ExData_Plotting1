# Data loaded from 'power_consumption_subset.txt', which contains only the subset
# required for this project (Feb 1-2, 2007). The subset was created from source 
# data in 'household_power_consumption.txt' using this command:
#
# `grep '^Date\|^[12]\/2\/2007' household_power_consumption.txt > power_consumption_subset.txt`

# Step 1: load required packages

library(readr)

# Step 2: load the data (assumes working directory is set to data location) 

pc_data <- read.delim('power_consumption_subset.txt', sep=';', na='?')

# Step 3: open PNG device and create the graph 

png(file="plot1.png", width=480, height=480)
hist(pc_data$Global_active_power, 
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
