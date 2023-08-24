mean(rainfall_in_jharkhand$`Rainfall(Cm)`)
median(rainfall_in_jharkhand$`Rainfall(Cm)`)
var(rainfall_in_jharkhand$`Rainfall(Cm)`)
sd(rainfall_in_jharkhand$`Rainfall(Cm)`)
range(rainfall_in_jharkhand$`Rainfall(Cm)`)
diff(range(rainfall_in_jharkhand$`Rainfall(Cm)`))
IQR(rainfall_in_jharkhand$`Rainfall(Cm)`)
summary(rainfall_in_jharkhand$`Rainfall(Cm)`)
boxplot(rainfall_in_jharkhand$`Rainfall(Cm)`)

# question 2
RF = c(14.27, 14.80, 12.28, 17.09, 15.10, 12.92, 15.56, 15.38, 13.45)
summary(RF)
boxplot(RF)
hist(RF, breaks=5, prob= T, main ="rainfall in JH", col="green")

# question 3
class_size = c(350, 45, 35, 25, 40)
mean(class_size)
median(class_size)
var(class_size)
sd(class_size)

mean(classdata$noofStudents)
summary(classdata$noofStudents)
IQR(classdata$noofStudents)
boxplot(classdata$noofStudents)
var(classdata$noofStudents)
sd(classdata$noofStudents)
