report.html: report.Rmd code/render_report.R 
	Rscript code/render_report.R
	
.PHONY: clean
clean:
	rm -f output/*.rds && rm -f report.html

.PHONY: install
install:
	Rscript -e "renv::restore(prompt=FALSE)"

PROJECTFILES=report.Rmd code/render_report.R
RENVFILES=renv.lock renv/activate.R renv/settings.json

project_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
report/report.html: project_image 
	docker run -v "/$$(pwd)/report":/project/report project_image