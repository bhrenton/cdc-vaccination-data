library(tidyverse)
library(jsonlite)
table1 <- fromJSON("https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_trends_data")
trends<-table1[['vaccination_trends_data']]
table2 <- fromJSON("https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_county_condensed_data")
counties<-table2[['vaccination_county_condensed_data']]
table3 <- fromJSON("https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_demographics_data")
demographics<-table3[['vaccination_demographics_data']]
table4 <- fromJSON("https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_data")
vaccination<-table4[['vaccination_data']]
write.csv(demographics, "vaccination_demographics.csv",row.names=F)
write.csv(vaccination, "vaccination_data.csv",row.names=F)
write.csv(counties, "vaccination_county.csv",row.names=F)
write.csv(trends, "vaccination_trends.csv",row.names=F)