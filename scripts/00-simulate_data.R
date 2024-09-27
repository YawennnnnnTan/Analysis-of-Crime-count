#### Preamble ####
# Purpose: Simulates data
# Author: Yawen Tan
# Date: 27 September 2024
# Contact: yawen.tan@mail.utoronto.ca


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)#inside tidyverse
#### Simulate data ####
set.seed(304)
number_of_data=1000
#Generate simulated data
simulated_data<-tibble(
             number_of_crime=rpois(n=number_of_data,lambda=50),
             sex=sample(c('F', 'M'), number_of_data, replace=TRUE),
             type=sample(c('assault', 'Sexual Violation','Robbery'), number_of_year, replace=TRUE),
             age=sample(c('<12', '12 to 17','18 to 24','25-34','35 to 44','45 to 54','55 to 64','65+'), number_of_year, replace=TRUE))
#Save simulated data
write_csv(simulated_data, "data/simulated_data.csv")

