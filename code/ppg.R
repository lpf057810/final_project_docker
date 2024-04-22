library(here)
library(knitr)

here::i_am("code/ppg.R")
absolute_path<-here::here("data/bangle.csv")
ppg <- read.csv(absolute_path, header = TRUE)

library(ggplot2)

ppg[,1]<-ppg[,1]-ppg[1,1]

ppg$timestamp_ms<-ppg$timestamp_ms/1000

scatterplot<-ggplot(ppg, aes(x = timestamp_ms, y = value))+geom_line()+geom_point(color = "red", size = 0.5) +
  labs(x = "Timestamp (ms)", y = "PPG Signal Value", title = "Raw PPG Signal with Detected Peaks") +
  theme_minimal()

ggsave(
  plot=scatterplot,
  device='png',
  file.path(here::here("output/scatterplot.png"))
)

