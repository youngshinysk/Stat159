<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>....

# Multiple Regression Analysis (HW3)
The main purpose of this project is to perform multiple linear regression with three predictors (TV, Radio, Newspaper) and one response/target variable(Sales)

How to reproduce this project\n
1. use eda-script.R to explore the data\n
2. use regression-script.R to create regression objects\n
3. use regression.RData to perform necessary data analysis\n

##Author: Youngshin Kim

email: youngshin.kim@berkeley.edu

##Structure

```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt
	code/
		README.md
		test-that.R (testing whether functions work properly or not)
		functions/
			regression-functions.R (scripts for functions to calculate various regression statistic by hand)
		scripts/
			eda-script.R (scripts for creating summary statistics of the data set / data exploration)
			regression-script.R (scripts for creating regression objects)
			session-info-script.R (scripts for creating session-info with information about packages used)
		tests/
			test-regression.R
	data/
		README.md
		Advertising.csv (data)
		eda-output.txt (created from eda-script.R)
		correlation-matrix.RData (contains correlation data)
		regression.RData (contains all the regression objects)
	images/
		histogram-sales.png
		histogram-tv.png
		histogram-radio.png
		histogram-newspaper.png
		scatterplot-matrix.png
		scatterplot-tv-sales.png
		scatterplot-radio-sales.png
		scatterplot-newspaper-sales.png
		residual-plot.png
		scale-location-plot.png
		normal-qq-plot.png
	report/
		report.Rmd
		report.pdf
```


