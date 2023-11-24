#' Filter 'departement' data
#'
#' @description
#' Inputs data on French 'departements' (administrative regions) from data.gouv (@https://www.data.gouv.fr/fr/datasets/contours-des-departements-francais-issus-d-openstreetmap/),
#' selects specified 'deparements" for the analysis, and converts it to a spatial object in EPSG:2154.
#' 
#' @param departement OpenStreetMap data for French 'departements' (SHP format).
#' 
#' @param dep_code Code for the 'departement(s)' to keep (vector of >= 1 alphanumeric code).
#'
#' @return Spatial features object (CRS = EPSG:2154) for (a) selected 'departement(s)'.
#' @export
#'
#' @examples

filter_departement_data <- function(departement, dep_code){
  departement <- sf::st_read(here::here(departement))
  # dep_code = c(34)
  
  for (d in 1:length(dep_code)){
    if (nchar(dep_code[d]) == 1){
      dep_code[d] = paste0("0", dep_code[d])
    }else{
      dep_code[d] = as.character(dep_code[d])
    }
  }
  
  departement_filtered <- departement |> 
    dplyr::filter(code_insee %in% dep_code) |> 
    sf::st_transform(crs = 2154)
  
  if (nrow((departement_filtered))< 1){
    stop("Code for 'departement' (dep_code) does not exist! Correct code and try again!")
  }
  
  return(departement_filtered)
}
