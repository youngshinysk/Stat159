data = read.csv('data/Advertising.csv')

#summary
sink(file = 'data/eda-output.txt')

cat('Summary statistics for TV advertising budget\n\n')
summary(data$TV)

cat('\n\nSummary statistics for Sales\n\n')
summary(data$Sales)
sink()

#histogram for TV
hist(data$TV)

png(file = 'images/histogram-tv.png')
hist(data$TV, xlab = 'TV (thousands of dollars)', main = 'Histogram for TV advertising budget')
dev.off()

pdf(file = 'images/histogram-tv.pdf')
hist(data$TV, xlab = 'TV (thousands of dollars)', main = 'Histogram for TV advertising budget')
dev.off()

#histogram for Sales
hist(data$Sales)

png(file = 'images/histogram-sales.png')
hist(data$Sales, xlab = 'Sales (thousands of unit)', main = 'Histogram for Sales')
dev.off()

pdf(file = 'images/histogram-sales.pdf')
hist(data$Sales, xlab = 'Sales (thousands of unit)', main = 'Histogram for Sales')
dev.off()