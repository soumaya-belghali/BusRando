#' Buffer autour des stations de bus
#'
#' @params le rayon du buffer a determiner
#' @description 
#' This function reads the "clean_bus" `shp` file named 
#' `bus_buff` stored in `data/`.
#'
#'
#' @return bus_buff `shp`  
#' @export


bus_buff<- function (clean_bus) {
  bus_buff<-st_buffer(clean_bus,@params)
  return()
}



