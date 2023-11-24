#' Clean hike data
#'
#' @description
#' Inputs data on French hiking trails from data.gouv (@https://www.data.gouv.fr/fr/datasets/itineraires-de-randonnee-dans-openstreetmap/), 
#' selects meaningful columns for the analysis, and converts it to a spatial object in EPSG:2154.
#' 
#' @param raw_hike OpenStreetMap data for hiking trails in France (CSV format).
#'
#' @return Spatial features object (CRS = EPSG:2154) with selected columns (covariates).
#' @export
#'
#' @examples

clean_hike_data <- function(raw_hike){
  raw_hike <- read.csv(here::here(raw_hike))
  
  hike <- raw_hike |> 
    dplyr::select(osm_id, route, name, short_name, 
                  from, to, 
                  distance, duration, roundtrip, colour,
                  the_geom) |> 
    dplyr::mutate(from = tolower(from),
                  to = tolower(to)) |> 
    sf::st_as_sf(wkt = "the_geom", crs = 3857) |> 
    sf::st_transform(crs = 2154)
  
  return(hike)
}


