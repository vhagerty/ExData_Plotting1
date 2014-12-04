data_file <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
temp <- tempfile()
download.file(data_file,temp)
all_data <- read.table(unz(temp,"household_power_consumption.txt"),sep=";",na.strings="?",header=T)
data <- subset(all_data,Date=='1/2/2007' | Date=='2/2/2007')
png(file='plot1.png')
hist(data$Global_active_power, col="red",xlab="Global Active Power (kilowatts)", main="Global active power")
dev.off()
unlink(temp)
