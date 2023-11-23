#' Read hiking routes - Raw data file
#'
#' @description 
#' This function reads the data file `csv` named 
#' `hiking_routes.csv`, stored in `data/raw_data/`.
#'   
#' **Note:** the function [collect_data()] must have been run first.
#'
#' @param file a character of length 1. The path to the csv file.
#'
#' @return A `tabble` with  rows () and  variables describing 
#' hiking routes of France.
#' 

#' ## Download data ----
#' collect_data()
#' 
#' ## Import data ----
#' hiking_routes <- read_hiking_routes(here::here("data", "raw_data", 
#'                                    "hiking_routes.csv"))
#' }

read_hiking_routes <- function(file) {
  
  ## Check if file exists ----
  
  if (!file.exists(file)) {
    stop("The file '", file, "' does not exist. Please run ", 
         "'collect_data()' to download it.", call. = FALSE)
  }
  
  
  ## Check if file name is good ----
  
  if (basename(file) != "hiking_routes.csv") {
    stop("Wrong file name ('hiking_routes.csv')", call. = FALSE)
  }
  
  
  ## Open file ----
  
  suppressMessages(readr::read_csv(file))
}



#' Read bus stop - Raw data file
#'
#' @description 
#' This function reads the data file `csv` named 
#' ``bus_stops_montpellier.csv` stored in `data/raw_data/`.
#'   
#' **Note:** the function [collect_data()] must have been run first.
#'
#' @param file a character of length 1. The path to the csv file.
#'
#' @return A `tabble` with rows () and  variables describing 
#' the bus stops in Montpellier - France.
#' 
#' ## Download data ----
#' collect_data()
#' 
#' ## Import data ----
#' bus_stops_montpellier <- read_bus_stop(here::here("data", "raw_data", 
#'                                      "bus_stops_montpellier.csv"))
#' }

read_bus_stop <- function(file) {
  
  ## Check if file exists ----
  
  if (!file.exists(file)) {
    stop("The file '", file, "' does not exist. Please run ", 
         "'collect_data()' to download it.", call. = FALSE)
  }
  
  
  ## Check if file name is good ----
  
  if (basename(file) != "bus_stops_montpellier.csv") {
    stop("Wrong file name ('bus_stops_montpellier.csv')", call. = FALSE)
  }
  
  
  ## Open file ----
  
  suppressMessages(readr::read_csv(file))
}



#' Read hiking routes - Raw data file
#'
#' @description 
#' This function reads the data file `csv` named 
#' `france_cities.csv`, stored in `data/raw_data/`.
#'   
#' **Note:** the function [collect_data()] must have been run first.
#'
#' @param file a character of length 1. The path to the csv file.
#'
#' @return A `tabble` with  rows () and  variables describing 
#' hiking routes of France.
#' 

#' ## Download data ----
#' collect_data()
#' 
#' ## Import data ----
#' france_cities <- read_france_cities(here::here("data", "raw_data", 
#'                                    "france_cities.csv"))
#' }


read_sp_eco <- function(file) {
  
  ## Check if file exists ----
  
  if (!file.exists(file)) {
    stop("The file '", file, "' does not exist. Please run ", 
         "'dl_wildfinder_data()' to download it.", call. = FALSE)
  }
  
  
  ## Check if file name is good ----
  
  if (basename(file) != "wildfinder-ecoregions_species.csv") {
    stop("Wrong file name ('wildfinder-ecoregions_species.csv')", call. = FALSE)
  }
  
  
  ## Open file ----
  
  suppressMessages(readr::read_csv(file))
}
