#### Preamble ####
# Purpose: Clean raw data we obtain in opendatatoronto
# Author: Yawen Tan
# Date: 27 September 2024
# Contact: yawen.tan@mail.utoronto.ca
# Pre-requisites: run 01-download_data.R


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data<-read_csv("data/raw_data.csv")

# Select variable
selectdata <- subset(raw_data,select = c(SUBTYPE, SEX,AGE_COHORT,COUNT_))

# Rename variable
renamedata <-  selectdata |>
  rename(
    crime_type=SUBTYPE,
    sex=SEX,
    age_group=AGE_COHORT,
    crime_count=COUNT_)

# Rename value in each variable
renamedata2 <-
  renamedata |>
  mutate(sex=case_match(sex,"F" ~ "Female","M" ~ "Male"),
         age_group=case_match(age_group,"<12" ~ "<12","12 to 17" ~ "12-17","18 to 24" ~ "18-24","25 to 34" ~ "25-34","35 to 44" ~ "35-44","45 to 54" ~ "45-54","55 to 64" ~ "55-64","65+" ~ "65+"),
         crime_type=case_match(crime_type,"Assault" ~ "Assault","Sexual Violation" ~ "Sexual Violation","Robbery" ~ "Robbery"))

# check NA
all(is.na(renamedata2))

#Clean NA value
cleaned_data <- na.omit(renamedata2)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data.csv")





