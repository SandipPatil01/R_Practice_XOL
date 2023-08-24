names(HousingPrices)
levels(HousingPrices$airconditioning)
levels(HousingPrices$parking)

boxplot(HousingPrices$price)

range(HousingPrices$price)

#Histogram Based on prices
# create feq table
break.house_Prices = c(1750000+(diff(range(HousingPrices$price))/9)*0:10)
house_Prices.cut = cut(HousingPrices$price, breaks = break.house_Prices, right = FALSE)
FreqTab.house_Prices = table(house_Prices.cut) #Frequency table
PropFreqTab.house_Prices = prop.table(FreqTab.house_Prices) #Relative frequency table

#Histogram created by the software based on the given classes
hist(HousingPrices$price, breaks=break.house_Prices, right=FALSE, probability = TRUE, xlab="House Prices", main="Histogram of House Prices", col = "lightblue")

#
#Histogram Based on Area

range(HousingPrices$area)
# create feq table
break.house_Area = c(650+(diff(range(HousingPrices$area))/9)*0:10)
house_Area.cut = cut(HousingPrices$area, breaks = break.house_Area, right = FALSE)
FreqTab.house_Area = table(house_Area.cut) #Frequency table
PropFreqTab.house_Area = prop.table(FreqTab.house_Area) #Relative frequency table

#Histogram created by the software based on the given classes
hist(HousingPrices$area, breaks=break.house_Area, right=FALSE, probability = TRUE, xlab="House Area", main="Histogram of House Area", col = "lightblue")

#
#
#Histogram Based on Bedrooms

range(HousingPrices$bedrooms)
# create feq table
break.house_bedrooms = c(1+(diff(range(HousingPrices$bedrooms))/5)*0:6)
house_bedroom.cut = cut(HousingPrices$bedrooms, breaks = break.house_bedrooms, right = FALSE)
FreqTab.house_beds = table(house_bedroom.cut) #Frequency table
PropFreqTab.house_beds = prop.table(FreqTab.house_beds) #Relative frequency table

#Histogram created by the software based on the given classes
hist(HousingPrices$bedrooms, breaks=break.house_bedrooms, right=FALSE, probability = TRUE, xlab="House bedrooms", main="Histogram of House bedrooms", col = "lightblue")

#
#
#Histogram Based on bathrooms

range(HousingPrices$bathrooms)
# create feq table
break.house_baths = c(1+(diff(range(HousingPrices$bathrooms))/3)*0:4)
house_baths.cut = cut(HousingPrices$bathrooms, breaks = break.house_baths, right = FALSE)
FreqTab.house_baths = table(house_baths.cut) #Frequency table
PropFreqTab.house_Baths = prop.table(FreqTab.house_baths) #Relative frequency table

#Histogram created by the software based on the given classes
hist(HousingPrices$bathrooms, breaks=break.house_baths, right=FALSE, probability = TRUE, xlab="House BathRooms", main="Histogram of House BathRooms", col = "lightblue")

#
#
#Histogram Based on Stories

range(HousingPrices$stories)
# create feq table
break.house_stories = c(1+(diff(range(HousingPrices$stories))/3)*0:4)
house_stories.cut = cut(HousingPrices$stories, breaks = break.house_stories, right = FALSE)
FreqTab.house_Stories = table(house_stories.cut) #Frequency table
PropFreqTab.house_Stories = prop.table(FreqTab.house_Stories) #Relative frequency table

#Histogram created by the software based on the given classes
hist(HousingPrices$stories, breaks=break.house_stories, right=FALSE, probability = TRUE, xlab="House Stories", main="Histogram of House Stories", col = "lightblue")

#