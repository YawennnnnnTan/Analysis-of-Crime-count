#### Preamble ####
# Purpose: Test simulated data
# Author: Yawen Tan
# Date: 27 September 2024
# Contact: yawen.tan@mail.utoronto.ca
# Pre-requisites: access and read raw_data.csv and cleaned_data.csv

#Test if simulated data has NA value
simulated_data<-read_csv("data/simulated_data.csv")
simulated_data$number_of_crime |> min() <=0
all(is.na(simulated_data))


# Testing if there are only Female and Male in Sex of simulated data
simulated_data$`sex` |>
  unique() |>
  sort() == sort(c("M", "F"))
length(unique(simulated_data$`sex`)) == 2


# Testing if there are only 'assault', 'Sexual Violation','Robbery' in Type of simulated data
simulated_data$`type` |>
  unique() |>
  sort() == sort(c('assault', 'Sexual Violation','Robbery'))
length(unique(simulated_data$`type`)) == 3


# Testing if there are only 8 type of age groups in Age of simulated data
simulated_data$`age` |>
  unique() |>
  sort() == sort(c('<12', '12 to 17','18 to 24','25-34','35 to 44','45 to 54','55 to 64','65+'))
length(unique(simulated_data$`age`))==8





