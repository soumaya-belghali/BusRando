




map_bus_hikes <- function(hike_filtered, bus_clean, bus_buff, inters_hike_bus, inters_bus_hike) {
  
  # targets::tar_load("bus_buff")
  # targets::tar_load("bus_clean")
  # targets::tar_load("hike_filtered")
  # targets::tar_load("inters_hike_bus")
  # targets::tar_load("inters_bus_hike")
  
  rownames(hike_filtered) <- 1:nrow(hike_filtered)
  rownames(bus_clean) <- 1:nrow(bus_clean)
  rownames(bus_buff) <- 1:nrow(bus_buff)
  
  ## Keep hikes nearby bus stops:
  inters_hikes_ID <- c()
  
  for (h in 1:length(inters_hike_bus)){
    if (length(inters_hike_bus[[h]]) > 0){
      inters_hikes_ID <- c(inters_hikes_ID, h)
    }
  }
  
  inters_hikes <- hike_filtered[rownames(hike_filtered) %in% as.character(inters_hikes_ID),]
  
  
  
  ## Colour bus stops nearby hikes:
  bus_clean$hike_nearby <- F
  bus_clean$hike_ID <- ""
  for (b in 1:length(inters_bus_hike)){
    if (length(inters_bus_hike[[b]]) > 0){
      bus_clean$hike_nearby[b] <- T
      bus_clean$hike_ID[b] <- paste(inters_bus_hike[[b]], collapse = "-")
    }
  }
  
  map <- mapview::mapview(inters_hikes, color = "black", lwd = 5, map.types = c("OpenTopoMap")) + 
    mapview::mapview(bus_clean, zcol = "hike_nearby", col.regions = c("white", "darkgreen"))
  
  return(map)
}
