#' Renseigne si les buff des bus intersect des chemins
#'
#' @description 
#' This function reads the bus" `shp` file named 
#' `bus_buff` stored in `data/`.
#'
#'
#' @return inters_hike_bus `shp`  
#' @export


inters_bus_hike<- function (bus_buff,hike_filtered) {
  inter<-sf::st_intersects(bus_buff,hike_filtered)
  return(inter)
}



