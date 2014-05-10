# Coursera Exploratory Data Analysis 
# Course Project 1 - Plot 1
# Uwe Kristmann
# 10.05.2014
household_power_consumption <- read.table("./household_power_consumption.txt", sep=";", quote="\"")
twodays<-household_power_consumption[household_power_consumption$V1=="1/2/2007" | household_power_consumption$V1=="2/2/2007",]
col3<-as.matrix(twodays[3])
col3<-as.numeric(col3)
png(file="./plot1.png",width=480,height=480)
hist(x=col3,
    main="Global Active Power",
    xlab="Global Active Power (kilowatts)",
    col="red",
    ylim=c(0,1200)     
    )
dev.off()