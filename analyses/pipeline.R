# Pipeline for targets

library(targets)
library(tarchetypes)
library(ggplot2)

# tar_option_set(format = "qs")


## Load functions & options:
tar_source()

## Pipeline:
list(
  tar_target(dep_code, c(34)),
  
  tar_target(hiking_routes, download_data_csv(type = "hike"),
             format = "file"),
  tar_target(france_cities, download_data_csv(type = "cities"),
             format = "file"),
  tar_target(departement, download_data_zip(type = "departments"),
             format = "file"),
  tar_target(bus, download_data_zip(type = "bus_stops"),
             format = "file"),
  
  tar_target(hike, clean_hike_data(hiking_routes)),
  tar_target(departement_filtered, filter_departement_data(departement, dep_code)),
  tar_target(hike_filtered, filter_hike_data(hike, departement_filtered)),
  
  tar_targets(),
  tar_targets(),
  
  tar_render(index, "index.Rmd")
)