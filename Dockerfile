from rocker/r-ubuntu

run apt-get update && apt-get install -y pandoc

run mkdir /project
workdir /project

run mkdir code
run mkdir output
copy code code
copy output output
copy Makefile .
copy report.Rmd .

copy .Rprofile .
copy renv.lock .
run mkdir renv
copy renv/activate.R renv
copy renv/settings.json renv

run Rscript -e "renv::restore(prompt=FALSE)"

run mkdir report

CMD make && mv report.html report
