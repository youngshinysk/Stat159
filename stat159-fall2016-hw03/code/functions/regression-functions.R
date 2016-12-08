#rss function calculates residual sum of squares
#input is the lm object
#the function returns the rss value 
rss = function(lm){
  return (sum((lm$residuals)^2))
}

#tss function calculates total sum of squares
#input is the lm object
#the function returns the tss value
tss = function(lm){
  return(sum((lm$model[,1] - mean(lm$model[,1]))^2))
}

#rsquared function calculates the R^2 value by performing (1- (rss/tss))
#input is the lm object
#output is the R^2 value
rsquared = function(lm){
  return(1 - rss(lm)/tss(lm))
}

#fstat function calculates F-statistics value by
#performing ((tss-rss)/p) / (rss/(n-p-1))
#input is the lm object
#output is the F-stat value
fstat = function(lm){
  p = ncol(lm$model) - 1
  n = nrow(lm$model)
  return(((tss(lm)-rss(lm))/p)/(rss(lm)/(n-p-1)))
}

#rse function calculates residual standard error by
#performing (sqrt(rss/(n-p-1)))
#input is the lm object
#output is the rse value
rse = function(lm){
  return(sqrt(rss(lm) / (nrow(lm$model) - ncol(lm$model))))
}