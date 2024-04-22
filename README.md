# Project Description

This report uses R to detect the beat and peak of signal value from a commercial wearable device called the bangle.js. The dataset used in this report is  called 'bangle.csv' has two columns and 6781 observations which are 'timestamp_ms' column in  million-seconds and 'value' column representing 124 seconds' PPG signal values. The first point of the time column in the PPG dataset is set to 0 and subsequent values are changed accordingly. For large dataset, the frequency of PPG signal value is transferred from 100Hz to 75Hz.

The R code uses the `ggplot2` library to visualize a raw PPG signal with detected peaks. The dataset is read from a CSV file and undergoes preprocessing, including baseline setting and timestamp conversion. The resulting plot displays the raw PPG signal over time, with red points indicating detected peaks. 

- `code/` contains all code related to the  analysis
	- `code/ppg.R` produces scatterplot 
		- scatterplot  should be saved to `output/`
	- `code/table.R` produces the table
		- table should be saved to `output/`
- `report.Rmd` load the code from `code/ppg.R` and `code/table.R` creating the report for analysis


`render_report.R` is used for rendering the report from the command line