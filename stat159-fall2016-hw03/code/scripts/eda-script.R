advertising = read.csv('../../data/Advertising.csv')

#summary statistics
correlation = cor(advertising[,2:5])
save(correlation, file = '../../data/correlation-matrix.RData')

cat('<Summary Statistics of Advertising Data Set>\n', file = '../../data/eda-output.txt')
sink(file = '../../data/eda-output.txt', append = T)

cat('\nSales\n')
summary(advertising$Sales)

cat('TV\n')
summary(advertising$TV)

cat('\nRadio\n')
summary(advertising$Radio)

cat('\nNewspaper\n')
summary(advertising$Newspaper)

cat('\nCorrelation Matrix\n')
correlation
sink()


#plots
png('../../images/histogram-sales.png')
hist(advertising$Sales, main = "Sales", xlab = "Thousands of units")
dev.off()

png('../../images/histogram-tv.png')
hist(advertising$TV, main = "TV", xlab = "Thousands of dollars")
dev.off()

png('../../images/histogram-radio.png')
hist(advertising$Radio, main = "Radio", xlab = "Thousands of dollars")
dev.off()

png('../../images/histogram-newspaper.png')
hist(advertising$Newspaper, main = "Newspaper", xlab = "Thousands of dollars")
dev.off()

png('../../images/scatterplot-matrix.png')
plot(advertising[,2:5], main = 'Scatterplot Matrix of Advertising Data')
dev.off()


