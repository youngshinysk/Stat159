advertising <- read.csv('../../data/Advertising.csv')

#advertising regression object
adv_reg = lm(Sales ~ TV + Radio + Newspaper, data = advertising)
adv_reg_summary = summary(adv_reg)

#predictors regression objects
tv = lm(Sales ~ TV, data = advertising)
tv_reg_summary = summary(tv)

radio = lm(Sales ~ Radio, data = advertising)
radio_reg_summary = summary(radio)

newspaper = lm(Sales ~ Newspaper, data = advertising)
newspaper_reg_summary = summary(newspaper)

save(advertising, adv_reg, adv_reg_summary, tv_reg_summary, radio_reg_summary, newspaper_reg_summary,
     file = '../../data/regression.RData')

#plots
png('../../images/scatterplot-tv-sales.png')
plot(advertising$TV, advertising$Sales, main = "TV vs Sales", xlab = "TV", ylab = 'Sales')
dev.off()

png('../../images/scatterplot-radio-sales.png')
plot(advertising$Radio, advertising$Sales, main = "TV vs Radio", xlab = "Radio", ylab = 'Sales')
dev.off()

png('../../images/scatterplot-newspaper-sales.png')
plot(advertising$Newspaper, advertising$Sales, main = "TV vs Newspaper", xlab = "Newspaper", ylab = 'Sales')
dev.off()

png('../../images/residual-plot.png')
plot(adv_reg, which = 1)
dev.off()

png('../../images/scale-location-plot.png')
plot(adv_reg, which = 2)
dev.off()

png('../../images/normal-qq-plot.png')
plot(adv_reg, which = 3)
dev.off()
