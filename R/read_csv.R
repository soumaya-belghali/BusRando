#' Read csv files
#'
#' @description 
#' This function reads the `csv` file named 
#' `hiking_routes.csv` stored in `data/raw_data/`.
#'   
#' **Note:** the function [download_data_csv()] must have been run first.
#'
#' @param file a character of length 1. The path to the csv file.
#'
#' @return A table with rows and variables describing hiking routes in France
#' 
#' ## Download data ----
#' download_data_csv()
#' 
#' ## Import data ----
#' bus_stops_montpellier <- read_bus_stop(here::here("data", "raw_data", 
#'                                    "hiking_routes.csv"))
#' }


#' Read csv files
#'
#' @description 
#' This function reads the `csv` file named 
#' `france_cities.csv` stored in `data/raw_data/`.
#'   
#' **Note:** the function [download_data_csv()] must have been run first.
#'
#' @param file a character of length 1. The path to the csv file.
#'
#' @return A table with rows and 10 variables with inform France
#' 
#' ## Download data ----
#' download_data_csv()
#' 
#' ## Import data ----
#' bus_stops_montpellier <- read_bus_stop(here::here("data", "raw_data", 
#'                                    "hiking_routes.csv"))
#' }