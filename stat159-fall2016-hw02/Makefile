.PHONY: all data clean

all: report/report.pdf data/eda-output.txt data/regression.RData

clean: 
	rm report/report.pdf

data: 
	curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv
	mv Advertising.csv data

report/report.pdf: report/report.Rmd data/regression.RData 
	R -e 'library("rmarkdown");library("xtable");rmarkdown::render("report/report.Rmd")'

data/eda-output.txt: code/eda-script.R
	RScript code/eda-script.R

data/regression.RData: code/regression-script.R
	RScript code/regression-script.R

