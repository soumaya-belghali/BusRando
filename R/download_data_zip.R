#' @description 
#' This function downloads the raw dataset (zip files) from OpenStreetMap France departments
#' and the bus stops of Montpellier 
#' The files will be stored in `data/raw_data/` (csv files) hosted on the 
#' GitHub repository <https://github.com/soumaya-belghali/BusRando>. The files
#' won't be downloaded if already exist locally (except if `overwrite = TRUE`).
#' Three `.csv` files will be stored in`data/raw_data/`:
#'   - `france_departments.zip`
#'   - `bus_stops_montpellier.zip`
#'   
#' The folder `data/raw_data/` will be created if required.
#' 
#' @param overwrite a logical. If `TRUE`, the files will be downloaded again 
#'   and the previous versions will be erased.
#'
#' @return No return value.
#' 
#' 
#' download_data_zip()
#' }

download_data_zip <- function(type, overwrite = FALSE) {
  
  ## Destination location ---- 
  
  path <- here::here("data", "raw_data")
  
  
  ## File names ----
  if (type == "departments"){
    filenames_zip <- "france_departments.zip"
    filenames_shp <- "france_departments/departements-20180101.shp"
    url <- "https://www.data.gouv.fr/fr/datasets/r/eb36371a-761d-44a8-93ec-3d728bec17ce"
  }else if (type == "bus_stops"){
    filenames_zip <- "bus_stops_montpellier.zip"
    filenames_shp <- "bus_stops_montpellier/MMM_MMM_ArretsBus.shp"
    url <- "https://data.montpellier3m.fr/node/13234/download"
  }
  
  #filenames <- c("france_departments.zip",
  #              "bus_stops_montpellier.zip")
  
  
  ## URL ----
  
  #url <- c("https://www.data.gouv.fr/fr/datasets/r/eb36371a-761d-44a8-93ec-3d728bec17ce",
  #         "https://data.montpellier3m.fr/node/13234/download")
  
  ## Loop on files ----
  
  for (i in 1:length(filenames_zip)) {
    
    
    if (file.exists(file.path(path, i)) && !overwrite) {
      
      
      ## Check if exists locally ----
      
      message(paste0("The filename '", i, "' already exists. ", 
                     "Use 'overwrite = TRUE' to replace it"))
      
    } else {
      
      
      ## Create destination folder ----
      
      dir.create(path, showWarnings = FALSE, recursive = TRUE)
      
      
      ## Download file ----
      
      utils::download.file(url      = url[i],
                           destfile = file.path(path, filenames_zip[i]), mode = "wb")

      ## Unzip file ----
      
      if (type == "departments"){
        zip::unzip(here::here("data","raw_data", "france_departments.zip"), 
                                            exdir = here::here("data","raw_data","france_departments"))
      }else if (type == "bus_stops"){
        zip::unzip(here::here("data","raw_data", "bus_stops_montpellier.zip"), 
                   exdir = here::here("data","raw_data","bus_stops_montpellier"))
      }
      
      
      
    }
  }
  
  return(here::here("data", "raw_data", filenames_shp))
}

#zip::unzip(here::here("data","raw_data", "france_departments.zip"), exdir = here::here("data","raw_data","teste"))
#zip::unzip(here::here("data","raw_data", "bus_stops_montpellier.zip"), exdir = here::here("data","raw_data","teste"))
