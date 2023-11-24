#' Renseigne si une chemin de randos est intersecté par un buffer autour d'un arret de bus
#'
#' @description 
#' This function reads the hikes_filtered and "bus_buf" `shp` file named 
#' `hikes_filtered.shp` and `bus_buff` stored in `data/`.
#'
#'
#' @return inter `tibble` 
#' 
#' @export


inters_hike_bus<- function (hike_filtered,bus_buff) {
  inter<-sf::st_intersects(hike_filtered,bus_buff)
  return(inter)
}

