householddata <- "household_power_consumption.txt"
data <- read.table(householddata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
FebData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(FebData$Date, FebData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(FebData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()