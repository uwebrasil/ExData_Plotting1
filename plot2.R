# Coursera Exploratory Data Analysis 
# Course Project 1 - Plot 2
# Uwe Kristmann
# 10.05.2014
Sys.setlocale(category="LC_TIME",locale="C")
household_power_consumption <- read.table("./household_power_consumption.txt", sep=";", quote="\"")
twodays<-household_power_consumption[household_power_consumption$V1=="1/2/2007" | household_power_consumption$V1=="2/2/2007",]
col3<-as.matrix(twodays[3])
col3<-as.numeric(col3)
col12<-paste(twodays$V1,twodays$V2)
dt<-strptime(col12,format="%d/%m/%Y %H:%M:%S")
png(file="./plot2.png",width=480,height=480)
plot(dt,col3,
    main="",
    type="l",
    xlab="", 
    ylab="Global Active Power (kilowatts)",
    )
dev.off()