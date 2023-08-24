#
summary(WaitTimeBank$WaitTime)
IQR(WaitTimeBank$WaitTime)
#
var(WaitTimeBank$WaitTime)
sd(WaitTimeBank$WaitTime)
boxplot(WaitTimeBank$WaitTime)

#Histograms:
hist(WaitTimeBank$WaitTime, breaks=6, xlim=c(0,12) ,main="Histogram of Sepal Length", xlab="Sepal Length", col="plum1", freq=FALSE)



names(WaitTimeBank)
WaitTimeBank$WaitTime[1:5] #To call WaitTime vector


attach(WaitTimeBank)
WaitTime[1:5]

boxplot(WaitTime, main = "Boxplot of waiting time in a bank", ylab = "Waiting time(in minutes)")
hist(WaitTime)


#To produce a grouped frequency table with classes 0-2, 2-4, ... (note: endpoint belongs to next class)
break.WaitTimeBank = c(0,2,4,6,8,10,12)
WaitTimeBank.cut = cut(WaitTime, breaks = break.WaitTimeBank, right = FALSE)
FreqTab.WaitTime = table(WaitTimeBank.cut) #Frequency table
PropFreqTab.WaitTime = prop.table(FreqTab.WaitTime) #Relative frequency table

#Histogram
hist(WaitTime, breaks=break.WaitTimeBank, right=FALSE, freq=FALSE, ylab = "Relative frequency of wait time", xlab="Wait Time Data", main="Histogram of wait time data", col = "darkcyan")

#Both plots in the same window
par(mfrow=c(1,2))
boxplot(WaitTime, main = "Boxplot of waiting time in a bank", ylab = "Waiting time(in minutes)", col = "gold")
hist(WaitTime, breaks=break.WaitTimeBank, right=FALSE, freq=FALSE, ylab = "Relative frequency of wait time", xlab="Wait Time Data", main="Histogram of wait time data", col = "brown1")
dev.off()
