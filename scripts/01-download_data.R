#### Preamble ####
# Purpose: Download data from opendatatoronto
# Author: Yawen Tan
# Date: 27 September 2024
# Contact: yawen.tan@mail.utoronto.ca

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
# get package
package <- show_package("police-annual-statistical-report-victims-of-crime")
package

# get all resources for this package
resources <- list_package_resources("police-annual-statistical-report-victims-of-crime")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data


#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "data/raw_data.csv") 



