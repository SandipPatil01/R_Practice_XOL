#Problem Set 1


#Question 2
#Basic analysis of iris data
View(iris)

iris$Species
length(iris$Species)
length(iris$Sepal.Length)
dim(iris)

mean(iris$Sepal.Length)

#to know the names/levels of the variable "species" of iris

levels(iris$Species)

#groupwise average
mean(iris$Sepal.Length[iris$Species=="setosa"])

mean(iris$Sepal.Length[iris$Species=="versicolor"])
mean(iris$Sepal.Length[iris$Species=="virginica"])

mean(iris$Petal.Length[iris$Species=="setosa"])

#boxplot of Sepal.Length for different species
boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names = c("Setosa", "Versicolor", "Virginica"), col = c("orange","indianred2", "indianred4"), main = "Boxplot of Sepal.Length of different species")

#For outlier identification
boxplot(iris$Sepal.Length[iris$Species == "virginica"])$out

#Histograms:
hist(iris$Sepal.Length, main="Histogram of Sepal Length", xlab="Sepal Length", col="plum1", freq=FALSE)

#Q3 Rainfall Data
RF = c(14.27, 14.80, 12.28, 17.09, 15.10, 12.92, 15.56, 15.38, 13.45)
summary(RF)
boxplot(RF, ylab = "Rainfall in cm", xlab = "Rainfall", col = "yellow", main="Boxplot for Rainfall Data")

hist(RF,breaks = 3, prob=T, col = "yellow")

#Read WaitTimeBank.xlsx
#name of my dataset is WTData

names(WTData)
WTData$WaitTime[1:5] #To call WaitTime vector


attach(WTData)
WaitTime[1:5]

boxplot(WaitTime, main = "Boxplot of waiting time in a bank", ylab = "Waiting time(in minutes)")
hist(WaitTime)


#To produce a grouped frequency table with classes 0-2, 2-4, ... (note: endpoint belongs to next class)
break.WTData = c(0,2,4,6,8,10,12)
WTData.cut = cut(WaitTime, breaks = break.WTData, right = FALSE)
FreqTab.WaitTime = table(WTData.cut) #Frequency table
PropFreqTab.WaitTime = prop.table(FreqTab.WaitTime) #Relative frequency table

#Histogram
hist(WaitTime, breaks=break.WTData, right=FALSE, freq=FALSE, ylab = "Relative frequency of wait time", xlab="Wait Time Data", main="Histogram of wait time data", col = "darkcyan")

#Both plots in the same window
par(mfrow=c(1,2))
boxplot(WaitTime, main = "Boxplot of waiting time in a bank", ylab = "Waiting time(in minutes)", col = "gold")
hist(WaitTime, breaks=break.WTData, right=FALSE, freq=FALSE, ylab = "Relative frequency of wait time", xlab="Wait Time Data", main="Histogram of wait time data", col = "brown1")
dev.off()