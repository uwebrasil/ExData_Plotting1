# Coursera Exploratory Data Analysis 
# Course Project 1 - Plot 3
# Uwe Kristmann
# 10.05.2014
Sys.setlocale(category="LC_TIME",locale="C")
household_power_consumption <- read.table("./household_power_consumption.txt", sep=";", quote="\"")
twodays<-household_power_consumption[household_power_consumption$V1=="1/2/2007" | household_power_consumption$V1=="2/2/2007",]
col12<-paste(twodays$V1,twodays$V2)
dt<-strptime(col12,format="%d/%m/%Y %H:%M:%S")
col7<-as.matrix(twodays[7])
col7<-as.numeric(col7)
col8<-as.matrix(twodays[8])
col8<-as.numeric(col8)
col9<-as.matrix(twodays[9])
col9<-as.numeric(col9)
png(file="./plot3.png",width=480,height=480)
plot(dt,col7,
    main="",
    col="black", 
    type="l",
    xlab="",      
    ylab="Energy sub metering",
    )
lines(dt,col8,col="red")
lines(dt,col9,col="blue")
legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), 
       lty=1, col=c('black', 'red', 'blue'))
dev.off()