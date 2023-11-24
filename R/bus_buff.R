#' Buffer autour des stations de bus
#'
#' @param clean_bus Spatial object with bus stops (cleaned using 'clean_bus_data.R')
#'
#' @param max_dist le rayon du buffer a determiner
#' 
#' @description 
#' This function reads the "clean_bus" `shp` file named 
#' `bus_buff` stored in `data/`.
#'
#'
#' @return bus_buff `shp`  
#' @export


bus_buff <- function (clean_bus, max_dist) {
  bus_buff <- sf::st_buffer(clean_bus, max_dist)
  return(bus_buff)
}



