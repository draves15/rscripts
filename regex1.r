##Jupyter Notebook - First Application



library(tidyverse)
library(ggplot2)
library(dplyr)
#library(SparseM)
#library(reshape2)
#library(plotly)
#library(stringr)
#library(quantreg)



#regrex1 <- read_csv(file="regrex1.csv")

args <- commandArgs(trailingOnly = TRUE)
regrex1 <- read.csv(args[1])

png("draves15_regrex1.png")
ggplot(data = regrex1, aes(x=x, y=y)) +
  geom_point() 
dev.off()

png("draves15_regrex2.png")
ggplot(data = regrex1, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(color = "purple", formula = y ~ x, method = 'lm', level = 0) #+
#  geom_smooth(color = "purple", formula = y ~ x, method = 'loess', level = .95) +
#  geom_line(color = "green") +
#  geom_quantile(color = "red", formula = y ~ x) +
#  geom_quantile(quantiles = 0.5,color = "black",size=2, formula = y ~ x) +
#  geom_quantile(quantiles = 1, color = "blue", formula = y ~ x) +
#  geom_quantile(quantiles = 0, color = "blue", formula = y ~ x)
dev.off()


