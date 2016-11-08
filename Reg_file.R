library(tidyverse)
my.data <- read_csv("regLectureData.csv")
glimpse(my.data)
library(apaTables)
apa.cor.table(my.data)
psych::pairs.panels(as.data.frame(my.data))
my.regression <- lm(VidScore ~ iq + age, data=my.data)
my.regression
summary(my.regression)