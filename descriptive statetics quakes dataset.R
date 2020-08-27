#assinging varialble to dataset
equakes <- datasets::quakes


#filtering rows from top and bottom
head(equakes,20)
tail(equakes,20)

#summary of a dataset
summary(equakes)

#columns...

quakes[1,2]
quakes[,2]

#it removes the coloumn at the position 5
newquakes <- quakes[,-5]

#ploting
plot(equakes$mag)
plot(equakes$mag, equakes$depth, type="l")
plot(equakes$mag, type="l", xlab='Observations', ylab='Magnitude', main='earth quakes magnitude in diffrenet observaiton')

#histogram
hist(equakes$stations)
hist(equakes$long, col='red',)

#boxplot
boxplot(equakes$depth)
boxplot(equakes, main='Multiple', las=1)

#barplot
barplot(equakes[100,2])

#skewness
skewness(equakes, na.rm= F)

#sd
sd(equakes$mag, na.rm=F)

#varaince
var(equakes$mag, na.rm=F)


kurtosis(equakes, na.rm=F)
