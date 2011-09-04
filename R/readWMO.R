readWMO <- function(filename= "WMO.dat"){
  
  parseLatLon <-function(latLonString) {
    location   <- 1
    lastChar   <- substring(latLonString, nchar(latLonString))
    if(lastChar %in% c("S","W"))location <- (-1)
    s <- substring(latLonString, 1, (nchar(latLonString) -1 ))
	  elements <- strsplit(s, split = " ")
    degrees	 <- as.numeric(elements[[1]][1])
   	minutes	 <- (as.numeric(elements[[1]][2]))/60
	  seconds  <- 0
	 
	if(length(elements[[1]]) == 3 )seconds <- (as.numeric(elements[[1]][3]))/3600
	 
	coordinates <- (degrees + minutes + seconds) * location 
	  
	return(coordinates)
	 
	}
	
  transformLatLon <- Vectorize(parseLatLon)
  
  wmo <- read.delim(filename,stringsAsFactors = FALSE)
  
  wmo <- cbind(wmo, WmoLon = transformLatLon(wmo$Longitude),WmoLat = transformLatLon(wmo$Latitude) )
  
  O  <- wmo$ObsRems
  X  <- strsplit(O,split = ";")
  A <-  lapply(X,FUN= function(x){"A" %in% x})
  Agrimet <-  lapply(X,FUN= function(x){"AGRIMET" %in% x})
  coastal <-  lapply(X,FUN= function(x){"C" %in% x})
  mountain <-  lapply(X,FUN= function(x){"M" %in% x})
   
  wmo <- cbind(wmo, wmoAirport = unlist(A),
               AgriSite = unlist(Agrimet),
               wmoCoast = unlist(coastal),
               wmoMountain = unlist(mountain))

 return(wmo)
  
  
  
}