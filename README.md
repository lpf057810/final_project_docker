# Project Description

This report uses R to detect the beat and peak of signal value from a commercial wearable device called the bangle.js. The dataset used in this report is  called 'bangle.csv' has two columns and 6781 observations which are 'timestamp_ms' column in  million-seconds and 'value' column representing 124 seconds' PPG signal values. The first point of the time column in the PPG dataset is set to 0 and subsequent values are changed accordingly. For large dataset, the frequency of PPG signal value is transferred from 100Hz to 75Hz.

The R code uses the `ggplot2` library to visualize a raw PPG signal with detected peaks. The dataset is read from a CSV file and undergoes preprocessing, including baseline setting and timestamp conversion. The resulting plot displays the raw PPG signal over time, with red points indicating detected peaks. 

- `code/` contains all code related to the  analysis
	- `code/ppg.R` produces scatterplot 
		- scatterplot  should be saved to `output/`
	- `code/table.R` produces the table
		- table should be saved to `output/`
- `report.Rmd` load the rds files from `output/` creating the report for analysis


# Produce report guidance:
1. Make sure you have installed the `renv` package (`install.packages("renv")`)
2. Use `make install` under the main folder to synchronize packages
3. Use `docker build -t project_image .` under the main folder to build the project image
4. Use `make project_image` to get the automated version of the image
5.  Use `make report/report.html` to create a `report` folder  mounted to the `project` folder in the container. When the run command finishes, the `report` folder will contain the compiled report.
6. Here is my link to the Docker hub image : https://hub.docker.com/repository/docker/lpf057810/project_image/general
   
