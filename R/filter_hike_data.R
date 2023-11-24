#' Filter hiking trails in (a) specified 'departement(s)'
#'
#' @param hike Cleaned OpenStreetMap data for hiking trails in France (spatial features format, EPSG:2154).
#' @param departement_filtered Filtered OpenStreetMap data for French 'departements' (spatial features format, EPSG:2154).
#'
#' @return Filtered OpenStreetMap data for hiking trails in (a) specific 'departement(s)' of France (spatial features format, EPSG:2154).
#' @export
#'
#' @examples

filter_hike_data <- function(hike, departement_filtered){
  hike_filtered = sf::st_intersection(hike, departement_filtered)
  
  return(hike_filtered)
}
