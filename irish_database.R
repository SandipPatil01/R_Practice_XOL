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

#
#


#to know the names/levels of the variable "species" of iris

levels(iris$Species)

#groupwise average
mean(iris$Sepal.Length[iris$Species=="setosa"])
mean(iris$Sepal.Width[iris$Species=="setosa"])

mean(iris$Sepal.Length[iris$Species=="versicolor"])
mean(iris$Sepal.Width[iris$Species=="versicolor"])

mean(iris$Sepal.Length[iris$Species=="virginica"])
mean(iris$Sepal.Width[iris$Species=="virginica"])

mean(iris$Petal.Length[iris$Species=="setosa"])
mean(iris$Petal.Width[iris$Species=="setosa"])

mean(iris$Petal.Length[iris$Species=="versicolor"])
mean(iris$Petal.Width[iris$Species=="versicolor"])

mean(iris$Petal.Length[iris$Species=="versicolor"])
mean(iris$Petal.Width[iris$Species=="versicolor"])

median(iris$Sepal.Length[iris$Species=="setosa"])
median(iris$Sepal.Width[iris$Species=="setosa"])



#boxplot of Sepal.Length for different species
boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names = c("Setosa", "Versicolor", "Virginica"), col = c("orange","indianred2", "green"), main = "Boxplot of Sepal.Length of different species")
boxplot(iris$Sepal.Width[iris$Species=="setosa"], iris$Sepal.Width[iris$Species=="versicolor"], iris$Sepal.Width[iris$Species=="virginica"], names = c("Setosa", "Versicolor", "Virginica"), col = c("orange","indianred2", "green"), main = "Boxplot of Sepal.width of different species")

boxplot(iris$Petal.Length[iris$Species=="setosa"], iris$Petal.Length[iris$Species=="versicolor"], iris$Petal.Length[iris$Species=="virginica"], names = c("Setosa", "Versicolor", "Virginica"), col = c("orange","indianred2", "green"), main = "Boxplot of Petal.Length of different species")
boxplot(iris$Petal.Width[iris$Species=="setosa"], iris$Petal.Width[iris$Species=="versicolor"], iris$Petal.Width[iris$Species=="virginica"], names = c("Setosa", "Versicolor", "Virginica"), col = c("orange","indianred2", "green"), main = "Boxplot of Petal.Width of different species")

#For outlier identification
boxplot(iris$Petal.Width[iris$Species == "setosa"])$out

#Histograms:
hist(iris$Sepal.Length, breaks=12, xlim=c(4,8) ,main="Histogram of Sepal Length", xlab="Sepal Length", col="plum1", freq=FALSE)
