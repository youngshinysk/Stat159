.PHONY: all data clean

all: eda regression report.pdf

data/Advertising.csv:
	curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv data/Advertising.csv

tests: 
	cd code && Rscript test-that.R

report/report.pdf: report/report.Rmd data/regression.RData 
	R -e 'library("rmarkdown");library("xtable");rmarkdown::render("report/report.Rmd")'

data/eda-output.txt: code/scripts/eda-script.R
	RScript code/scripts/eda-script.R

regression: code/scripts/regression-script.R
	Rscript code/scripts/regression-script.R

clean: 
	rm report/report.pdf