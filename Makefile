table_file=output/table_one.rds
scatterplot_file=output/scatterplot.png

report.html: report.Rmd $(table_file) $(scatterplot_file)
	Rscript -e "rmarkdown::render('report.Rmd')"

output/scatterplot.png:code/ppg.R
	Rscript code/ppg.R
	
output/table_one.rds:code/table.R
	Rscript code/table.R

.PHONY: clean
clean:
	rm -f output/* && rm -f report.html && rm -rf report/

.PHONY: install
install:
	Rscript -e "renv::restore(prompt=FALSE)"

PROJECTFILES=report.Rmd code/render_report.R
RENVFILES=renv.lock renv/activate.R renv/settings.json

project_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
report/report.html: project_image 
	docker run -v "/$$(pwd)/report":/project/report lpf057810/project_image:latest