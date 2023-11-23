#' @description 
#' This function downloads the raw dataset (csv files) from OpenStreetMap Hiking Routes of France,
#' and the geolocalization of France cities
#' The three files will be stored in `data/raw_data/` (csv files) hosted on the 
#' GitHub repository <https://github.com/soumaya-belghali/BusRando>. The files
#' won't be downloaded if already exist locally (except if `overwrite = TRUE`).
#' Three `.csv` files will be stored in`data/raw_data/`:
#'   - `hiking_routes.csv` 
#'   - `france_cities.csv`
#'   
#' The folder `data/raw_data/` will be created if required.
#' 
#' @param overwrite a logical. If `TRUE`, the files will be downloaded again 
#'   and the previous versions will be erased.
#'
#' @return No return value.
#' 
#' 
#' collect_data()
#' }

download_data_csv <- function(overwrite = FALSE) {
  
  ## Destination location ---- 
  
  path <- here::here("data", "raw_data")
  
  
  ## File names ----
  
  filenames <- c("hiking_routes.csv", 
                 "france_cities.csv")
  
  
  ## URL ----
  
  url <- c("https://www.data.gouv.fr/fr/datasets/r/77a06e6f-1a38-4c65-95e6-ce0da64d37da",
           "https://www.data.gouv.fr/fr/datasets/r/51606633-fb13-4820-b795-9a2a575a72f1")
  
  ## Loop on files ----
  
  for (i in 1:length(filenames)) {
    
    
    if (file.exists(file.path(path, i)) && !overwrite) {
      
      
      ## Check if exists locally ----
      
      message(paste0("The filename '", i, "' already exists. ", 
                     "Use 'overwrite = TRUE' to replace it"))
      
    } else {
      
      
      ## Create destination folder ----
      
      dir.create(path, showWarnings = FALSE, recursive = TRUE)
      
      
      ## Download file ----
      
      utils::download.file(url      = url[i],
                           destfile = file.path(path, filenames[i]))
    
    }
  }
  
  
  invisible(NULL) 
}

