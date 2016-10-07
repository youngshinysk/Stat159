advertising = read.csv('data/Advertising.csv')

fit = lm(Sales ~ TV, data = advertising)
summary(fit)

#save regression object to .RData
save(fit, file = 'data/regression.RData')

#save scatterplot
png(file = 'images/scatterplot-tv-sales.png', width = 400, height = 300)
attach(advertising)
plot(TV, Sales, main = 'Scatterplot with fitted reg line for SLR of Sales on TV',
	xlab = 'TV (thousands of dollars)', ylab = 'Sales (thousands of units)')
abline(fit, col = 'red')
dev.off()

