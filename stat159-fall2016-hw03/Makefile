.PHONY: all data clean

all: eda regression report.pdf

data/Advertising.csv:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv -o data/Advertising.csv

reports = report/report
report.pdf: $(reports).Rmd
	cd report && Rscript -e "library('knitr'); library('rmarkdown'); render('report.Rmd', 'pdf_document')"

tests: 
	cd code && Rscript test-that.R

eda: $(code/scripts)/eda-script.R
	cd code/scripts && Rscript eda-script.R

regression: $(code/scripts)/regression-script.R
	cd code/scripts && Rscript regression-script.R

clean:
	rm $(reports).pdf