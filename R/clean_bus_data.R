#' Clean bus stations data (names and Lambert93 crs)
#'
#' @description 
#' This function reads the bus `shp` file named 
#' `bus.shp` stored in `data/`.
#'
#'
#' @return A `shp`
#' 
#' @export

bus_clean<- function (bus){
  
  bus$commune<-tolower(bus$commune)
  bus$commune<- gsub("-", " ", bus$commune)
  bus$commune<- gsub("é", "e", bus$commune)
  bus$commune<- gsub("è", "e", bus$commune)
  bus$commune<- gsub("ê", "e", bus$commune)
  bus$commune<- gsub("â", "a", bus$commune)
  bus$commune<- gsub("î", "i", bus$commune)
  bus$commune<- gsub("'", " ", bus$commune)
  bus<-sf::st_transform(bus,2154)
  
}

