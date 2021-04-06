library(tidyverse)
distribution_data <- read_csv("https://www.cdc.gov/coronavirus/2019-ncov/json/covid-vaccines-data.csv")
write.csv(distribution_data, "distributiondata.csv")
