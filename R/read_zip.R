#' Read zip files
#'
#' @description 
#' This function reads the `zip` file named 
#' `bus_stops_montpellier.zip` stored in `data/raw_data/`.
#'   
#' **Note:** the function [download_data_zip()] must have been run first.
#'
#' @param file a character of length 1. The path to the zip file.
#'
#' @return A directory with 07 files (.cpg, .dbf, .prj, .shp, .shx, .txt)
#' 
#' ## Download data ----
#' download_data_zip()
#' 
#' ## Import data ----
#' bus_stops_montpellier <- read_bus_stop(here::here("data", "raw_data", 
#'                                    "bus_stops_montpellier.zip"))
#' }


zip::unzip(here::here("data","raw_data", "france_departments.zip"), exdir = here::here("data","raw_data","teste"))
