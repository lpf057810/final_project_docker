library(here)
library(knitr)
here::i_am("code/ppg.R")
ppg <- read.csv("C:/Users/pengfei lou/Desktop/final_project_4/data/bangle.csv")
table_one<-kable(summary(ppg))

saveRDS(
  table_one,
  file = here::here("output/table_one.rds") )

