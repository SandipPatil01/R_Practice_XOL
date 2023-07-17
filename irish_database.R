data()
data("iris")
?iris
iris
mean(iris$Sepal.Length)
mean(iris$Sepal.Width)
mean(iris$Petal.Length)
mean(iris$Petal.Width)
median(iris$Sepal.Length)
var(iris$Sepal.Length)
table(iris$Species)

boxplot(iris$Sepal.Length~iris$Species, xlab = "Different Species", ylab = "Sepal Length", main = "Boxplot of house price data based on different neighborhoods", col = c("red", "blue", "green"))
boxplot(iris$Sepal.Width~iris$Species, xlab = "Different Species", ylab = "Sepal Width", main = "Boxplot of house price data based on different neighborhoods", col = c("red", "blue", "green"))
boxplot(iris$Petal.Length~iris$Species, xlab = "Different Species", ylab = "Petal Length", main = "Boxplot of house price data based on different neighborhoods", col = c("red", "blue", "green"))
boxplot(iris$Petal.Width~iris$Species, xlab = "Different Species", ylab = "Peatal Width", main = "Boxplot of house price data based on different neighborhoods", col = c("red", "blue", "green"))

levels(iris$Species)   ## Get the unique values from categorical variable

# Sepal Length
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)
range(iris$Sepal.Length)
diff(range(iris$Sepal.Length))
IQR(iris$Sepal.Length)

# create feq table
break.Sepal_length = c(4.3+(diff(range(iris$Sepal.Length))/9)*0:10)
Sepal_length.cut = cut(iris$Sepal.Length, breaks = break.Sepal_length, right = FALSE)
FreqTab.Sepal_length = table(Sepal_length.cut) #Frequency table
PropFreqTab.Sepal_length = prop.table(FreqTab.Sepal_length) #Relative frequency table

#Histogram created by the software based on the given classes
hist(iris$Sepal.Length, breaks=break.Sepal_length, right=FALSE, probability = TRUE, xlab="Sepal Length", main="Histogram of Sepal Length", col = "lightblue")

