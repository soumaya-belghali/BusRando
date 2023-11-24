#' Renseigne si les buff des bus intersect des chemins
#'
#' @description 
#' This function reads the bus" `shp` file named 
#' `bus_buff` stored in `data/`.
#'
#'
#' @return inters_hike_bus `shp`  
#' @export


inters_hike_bus<- function (hike_filtered,bus_buff) {
  inter<-st_intersects(hike_filtered,bus_buff)
  return()
}



