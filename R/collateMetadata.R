collateMetadata <- function(LonLat){ 

################################################################
#
# collate metadata
#
##############################################################

 
 require("raster")
 require("ncdf")
 
 if (!(is.data.frame(LonLat))) stop( "supply a data frame with Lon and Lat as columns")
 if ( !("Lon" %in% colnames(LonLat))) stop(" supply a data frame with Lon and Lat")
 if ( !("Lat" %in% colnames(LonLat))) stop(" supply a data frame with Lon and Lat")
 Metadata <- LonLat
 
 
     
 lonlat <-   cbind(Metadata$Lon,Metadata$Lat)
 
 
 Gmtfile       <- missingWarn(file.path(GMT_DIR, GMT.FILE, fsep = .Platform$file.sep))
 NavoFile      <- missingWarn(file.path(NAVO_DIR, NAVO.FILE, fsep = .Platform$file.sep))
 GpwFile       <- missingWarn(file.path(GPW_DIR, GPW.FILE, fsep = .Platform$file.sep))
 GrumpFile     <- missingWarn(file.path(GRMPURB_DIR, GRUMP.FILE, fsep = .Platform$file.sep))
 HydeFile      <- missingWarn(file.path(HYDE_DIR, HYDE.RASTER, fsep = .Platform$file.sep))
 HydeRuralFile <- missingWarn(file.path(HYDE_DIR, HYDE.RURAL.RASTER, fsep = .Platform$file.sep))
 HydeUrbanFile <- missingWarn(file.path(HYDE_DIR, HYDE.URBAN.RASTER, fsep = .Platform$file.sep))
 IsaFile       <- missingWarn(file.path(ISA_DIR, ISA.FILE, fsep = .Platform$file.sep))
 IsaRasterFile <- missingWarn(file.path(ISA_DIR, ISA.RASTER, fsep = .Platform$file.sep))
 modisFile     <- missingWarn(file.path(MODIS_DIR, MODIS.RASTER, fsep = .Platform$file.sep))
 modisBinaryFile  <- missingWarn(file.path(MODIS_DIR, MODIS.BINARY.RASTER, fsep = .Platform$file.sep))
 LightsFile    <- missingWarn(file.path(NIGHT_DIR, LIGHTS.FILE, fsep = .Platform$file.sep))
 airportFile   <- missingWarn(file.path(AIRPORTS_DIR, AIRPORT.RASTER, fsep = .Platform$file.sep))
 landuseFile     <- missingWarn(file.path(LULC_DIR, LANDUSE.RASTER, fsep = .Platform$file.sep))
 bluewaterFile  <- missingWarn(file.path(BLUEWTR_DIR, BLUEWATER.RASTER, fsep = .Platform$file.sep))
#######################################################
#  check for land cover folders
######################################################
 LCfolders <-  dir(LND_DIR,pattern = "^lc")
  
 AllFolders <- paste("lc", seq(from = 1, to = 72),sep = "")
 missing    <- setdiff(AllFolders, LCfolders) 
 if (length(missing) > 0){
   cat("These folders are missing from ", LND_DIR,"\n", missing, "\n")
 }
 

startTime <- Sys.time()
print(startTime)
print("starting with Navo Coast data")
##########################################################
# Start Navo data
########################################################
if (file.exists(NavoFile)){
distCoast <- raster(NavoFile,varname = "dst")
Metadata <- cbind(Metadata, DistanceNavo = extract(distCoast, lonlat),CoastNavo = NA)
x <- which(Metadata$DistanceNavo > 2)
Metadata$CoastNavo[x] <- "WATER"
x <- which(Metadata$DistanceNavo > 0 & Metadata$DistanceNavo <= 2)
Metadata$CoastNavo[x] <- "COAST"
x <- which(Metadata$DistanceNavo == 0 )
Metadata$CoastNavo[x] <- "LAND"
rm(distCoast)
} else {
  print( " navo file is missing")
}
#####################################################
# END NAvo
####################################################
navoTime <- Sys.time()
print(navoTime - startTime)
print("starting GMT Coast")
##########################################################
# Start GMT data
######################################################## 
if (file.exists(Gmtfile)){
coastRaster2 <- raster(Gmtfile)
Metadata     <- cbind(Metadata, DistanceGMT  = extract(coastRaster2, lonlat) , CoastGMT =  NA ) 
x            <- which(Metadata$DistanceGMT < -2 )
Metadata$CoastGMT[x] <- "LAND" 
x            <- which(Metadata$DistanceGMT > 2 )
Metadata$CoastGMT[x] <- "OCEAN"
x            <- which(Metadata$DistanceGMT >= -2 & Metadata$DistanceGMT <= 2)
Metadata$CoastGMT[x] <- "COAST"
rm(coastRaster2)
} else {
  print(" GMT coast distance file missing")
}
##########################################################
# END GMT data
########################################################
gmtTime <- Sys.time()
print(gmtTime - navoTime)
print(gmtTime - startTime)
print("starting GPW  ")
##########################################################
# START GPW data
########################################################
if ( file.exists(GpwFile)){
Gpw <- raster(GpwFile)
projection(Gpw) <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
Metadata <- cbind(Metadata,GpwDensity = extract(Gpw,lonlat ))
rm(Gpw)
} else {
  print( " Gpw file missing")
}
##########################################################
# END GPW data
########################################################
gpwTime <- Sys.time()
print(gpwTime - gmtTime)
print(gpwTime - startTime)
print("starting Hyde  ")
##########################################################
# Starting Hyde data
########################################################
if ( file.exists(HydeFile)){
Population <- brick(HydeFile)
Metadata   <- cbind( Metadata,    extract(Population,lonlat   ))
rm(Population)
} else {
  print("Hyde data is missing")
}
##########################################################
# Ending Hyde data
########################################################

print("starting Hyde Rural  ")
 
if ( file.exists(HydeRuralFile)){
Rural <- brick(HydeRuralFile)
Metadata   <- cbind( Metadata,    extract(Rural,lonlat   ))
rm(Rural)
} else {
  print("Hyde rural data is missing")
}
 
 print("starting Hyde Urban  ")
 
if ( file.exists(HydeUrbanFile)){
Urban <- brick(HydeUrbanFile)
Metadata   <- cbind( Metadata,    extract(Urban,lonlat   ))
rm(Urban)
} else {
  print("Hyde urban data is missing")
}
 
 
##########################################################
# Ending Hyde data
########################################################
hydeTime <- Sys.time()
print(hydeTime - gpwTime)
print(hydeTime - startTime)
print("starting Grump  ")
##########################################################
# Starting Grump data
########################################################
if (file.exists(GrumpFile)){
GrumpUrban <- raster(GrumpFile)
projection(GrumpUrban) <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
Metadata   <- cbind(Metadata, UrbanExtent = extract(GrumpUrban,lonlat) )
Type       <- rep(NA,nrow(Metadata))
x          <- which(Metadata$UrbanExtent == 0)
Type[x]    <- "WATER"
x          <- which(Metadata$UrbanExtent == 1)
Type[x]    <- "RURAL"
x          <- which(Metadata$UrbanExtent == 2)
Type[x]    <- "URBAN"
Metadata   <- cbind(Metadata,GRUMPType = Type)
Metadata   <- cbind(Metadata,MaxGrump5km = extract(GrumpUrban ,lonlat ,
                                            buffer = 5000, fun = max, na.rm = TRUE))
 
rm(GrumpUrban)
} else{
  print(" Grump file missing")
}
##########################################################
# Ending Grump data
########################################################
grumpTime <- Sys.time()
print(grumpTime - hydeTime)
print(grumpTime - startTime)
print("starting landcover   ")
##########################################################
# Starting Landcover data
########################################################
 
GLOBE30   <- raster(xmn = -180, xmx = 180, ymn = -90, ymx = 90, 
                    ncol = 12, nrow = 6,
                    crs = "+proj=longlat +datum=WGS84")
dir      <- "lc"
LandMeta <- cbind(Metadata,LCcell = cellFromXY(GLOBE30,lonlat))
fname    <- paste(LND_DIR,"/",dir,LandMeta$LCcell,"/",dir,LandMeta$LCcell,".tif",sep ="")
LandMeta <- cbind(LandMeta,Filename = fname,LCvalue = NA, Landcover = NA)
cells    <- unique(LandMeta$LCcell)

 
for( thisCell in cells){
   loadFile <- paste(LND_DIR, "/", dir, thisCell, "/", dir, thisCell, ".tif", sep ="")
   print(loadFile)
   tile     <- raster(loadFile)
   dex      <- which(LandMeta$LCcell == thisCell)    
   LandMeta$LCvalue[dex] <- extract(tile, cbind(LandMeta$Lon[dex], LandMeta$Lat[dex]))
 }
LandMeta$Landcover <-  COVER.TYPE[LandMeta$LCvalue]
Metadata           <- cbind(Metadata,LCvalue = LandMeta$LCvalue, Landcover = LandMeta$Landcover )
rm(tile)
rm(GLOBE30)
##########################################################
# Ending Landcover data
########################################################
lcTime <- Sys.time()
print(lcTime -grumpTime)
print(lcTime - startTime)
print("starting Urbanland   ")
##########################################################
# Staring Land use data
########################################################
if ( file.exists(landuseFile)){
landuse         <- stack(landuseFile)
numberCols <- ncol(Metadata)
Metadata        <-  cbind(Metadata,  extract(landuse,lonlat ))
  
rm(landuse)
} else {
  print("land use file missing")
}
##########################################################
# Ending land use data  
########################################################
landuseTime <- Sys.time()
print(landuseTime - lcTime)
print(landuseTime - startTime)

print("starting Bluewater  ")
##########################################################
# Staring bluewater
########################################################
 if ( file.exists(bluewaterFile)){
Blue <- raster(bluewaterFile)
Metadata <- cbind(Metadata,Bluewater = extract(Blue,lonlat)  ) 
 
rm(Blue)
 } else {
   print( "bluewater file missing")
 }
##########################################################
# Ending Bluewater  
########################################################
 blueTime <- Sys.time()
print(blueTime - landuseTime)
print(blueTime - startTime)
 
 
print("starting Modis Cover land   ")
##########################################################
# Staring Modis cover land data
########################################################
 if ( file.exists(modisFile)){
Modis <- raster(modisFile)
Metadata <- cbind(Metadata,modisValue = extract(Modis,lonlat),coverIndex = NA, modisCover =NA) 
Metadata$coverIndex <- Metadata$modisValue + 1 
Metadata$coverIndex[Metadata$coverIndex > 17] <- 18
Metadata$modisCover <- MODIS.COVER.TYPE[Metadata$coverIndex]
rm(Modis)
 } else {
   print( "Modis file missing")
 }
##########################################################
# Ending Modis cover  
########################################################
modisTime <- Sys.time()
print(modisTime - blueTime)
print(modisTime - startTime)
print("starting Modis Area   ")
##########################################################
# Starting Modis Area data
######################################################## 
if (file.exists(modisBinaryFile)){                  
ModisArea <- raster(modisBinaryFile)
#ModisArea <- aggregate(ModisArea, fact = 2)
Metadata  <- cbind(Metadata, modisUrban  = extract(ModisArea, lonlat))
Metadata  <- cbind(Metadata, MaxModis5km = extract(ModisArea, lonlat,
                            buffer = 5000,  fun = max, na.rm = TRUE))
 
rm(ModisArea)
} else {
  print( "modis binary missing")
}
##########################################################
# Ending Modis Area  
########################################################
areaTime <- Sys.time()
print(areaTime - modisTime)
print(areaTime - startTime)
print("starting   Isa   ")
##########################################################
# Starting  ISA 
########################################################
if (file.exists(IsaFile)){
ISA <- raster(IsaFile)
Metadata <- cbind(Metadata,Isa = extract(ISA,lonlat) )
rm(ISA)
ISA2 <- raster(IsaRasterFile)
 
Metadata <- cbind(Metadata, MaxIsa5km = extract(ISA2,lonlat ,
                            buffer = 5000, fun = max, na.rm = TRUE))
 
rm(ISA2)
} else {
  print("Isa file missing")
}
##########################################################
# Ending ISA Area  
########################################################
isaMaxTime <- Sys.time()
print(isaMaxTime - areaTime)
print(isaMaxTime - startTime)
print("starting   Nightlights   ")
##########################################################
# Starting Nightlights   
########################################################
if (file.exists(LightsFile)){
Lights <- raster(LightsFile)
Metadata <- cbind(Metadata,Lights = extract(Lights,lonlat) )
 
Metadata <- cbind(Metadata,MaxLights5km = extract(Lights,lonlat,
                            buffer = 5000, fun = max, na.rm = TRUE))
 
rm(Lights)
} else {
  print("nightlights missing")
}
##########################################################
# Ending Lights  
########################################################
lightsTime <- Sys.time()
print(lightsTime - isaMaxTime)
print(lightsTime - startTime)
print("starting   Airports   ")
##########################################################
# Starting Airports  
########################################################
if ( file.exists(airportFile)){
Airport  <- raster(airportFile)
Metadata <- cbind(Metadata,Airport = extract(Airport,lonlat),
                           Airport2km  = rep(NA,nrow(Metadata)),
                           Airport5km  = rep(NA,nrow(Metadata)))
                            
Metadata$Airport2km  <- Metadata$Airport
Metadata$Airport5km  <- Metadata$Airport
 
dex <- which(Metadata$Airport != 1)
 
Metadata$Airport2km[dex] <- extract(Airport,lonlat[dex, ],
                                           buffer = 2000, 
                                           fun = max, na.rm = TRUE)
   
Metadata$Airport5km  <- Metadata$Airport2km
 
dex <- which(Metadata$Airport2km != 1)
if (length(dex) > 1){
Metadata$Airport5km[dex] <- extract(Airport,lonlat[dex, ],
                                          buffer = 5000, 
                                          fun = max, na.rm = TRUE)
}
 
 
rm(Airport)
                                           
} else {
  print("Airport raster missing")
}
##########################################################
# Ending Airports 
########################################################
airportTime <- Sys.time()
print(airportTime - lightsTime)
print(airportTime - startTime)
print("Finished")
 return(Metadata)
}
