createRasters <- function(){
  
  require("raster")
  require("rgdal")

getFile <- list.files(recursive = TRUE, full.names = FALSE)



if ( MODIS.FILE %in% basename(getFile)){
  if (!(MODIS.RASTER %in% basename(getFile))){
  fname <- file.path(MODIS_DIR,MODIS.FILE,fsep =.Platform$file.sep) 
  Modis <- raster(fname)  
  xmin(Modis) <- (-180)
  xmax(Modis) <- 180
  ymin(Modis) <-  (-89.97917)
  ymax(Modis) <- 90
  projection(Modis) <-  "+proj=longlat +ellps=clrk66"
  writeRaster(Modis,file.path(MODIS_DIR, MODIS.RASTER, fsep = .Platform$file.sep),datatype = "INT1U")
  Modis <- reclass(Modis, rcl = c(0,12,0,14,500,0,13,13,1) )
  Modis <- aggregate(Modis, fact = 2, 
                     fun = mean,filename =  file.path(MODIS_DIR, MODIS.BINARY.RASTER, fsep =.Platform$file.sep),
                     datatype = 'FLT4S',overwrite = TRUE )
    
  } else {
    print("Modis raster already created")
  }
} else {
  print("Modis files are missing")
}
 
if ( ISA.FILE %in% basename(getFile)){
  if (!(ISA.RASTER %in% basename(getFile))){
   IsaFile <- file.path(ISA_DIR, ISA.FILE, fsep = .Platform$file.sep)
   ISA <- raster(IsaFile)    
   ISA <- reclass(ISA, c(-2, -.5, 0))
   writeRaster(ISA,file.path(ISA_DIR, ISA.RASTER, fsep = .Platform$file.sep),datatype = "INT1U")
 } else {
   print("ISA raster created")
 }
} else {
  print("ISA Files are missing")
}
 
if ( AIRPORT.FILE %in% basename(getFile)){
  if (!(AIRPORT.RASTER %in% basename(getFile))){
  fname    <- file.path(AIRPORTS_DIR, AIRPORT.FILE, fsep =  .Platform$file.sep)
  airports <- read.csv(fname)
  y        <- 180*60*2
  x        <- 360*60*2
  world <- raster(nrows = y,ncols = x, xmn = -180, xmx = 180, ymn = -90, ymx = 90, 
                  crs ="+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0")
  
  world <- rasterize( cbind(airports$longitude_deg,airports$latitude_deg), world)
  writeRaster(world, file.path(AIRPORTS_DIR, AIRPORT.RASTER, fsep = .Platform$file.sep ), datatype = 'INT1U')
  } else{
    print("airport raster already created")
  }
} else {
  print("Airport csv file not found")
}
if (!(HYDE.RASTER %in% basename(getFile))){
   HydeFiles  <-  list.files(path = HYDE_DIR, full.names = TRUE, pattern = "popd")
   Population <- brick(as.list(HydeFiles))
   projection(Population) <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
   writeRaster(Population,file.path(HYDE_DIR, HYDE.RASTER, fsep = .Platform$file.sep ))
 } else{
   print("Hyde raster already created")
 }

if (!(HYDE.RURAL.RASTER %in% basename(getFile))){
   HydeRural  <-  list.files(path = HYDE_DIR, full.names = TRUE, pattern = "rurc")
   Rural <- brick(as.list(HydeRural))
   projection(Rural) <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
   theseLayers <- layerNames(Rural)
   newLayers <- paste(theseLayers,"density",sep="_")
   allLayers <- c(theseLayers,newLayers)
   HydeDensity <- Rural /  area(Rural) 
   for (layers in 1:nlayers(HydeDensity)){
     r     <- raster(HydeDensity, layer = layers)
     Rural <- addLayer(Rural, r)
   }
   layerNames(Rural) <- allLayers
   writeRaster(Rural,file.path(HYDE_DIR, HYDE.RURAL.RASTER, fsep = .Platform$file.sep ))
 } else{
   print("Hyde raster already created")
 }

if (!(HYDE.URBAN.RASTER %in% basename(getFile))){
   HydeUrban  <-  list.files(path = HYDE_DIR, full.names = TRUE, pattern = "urbc")
   Urban <- brick(as.list(HydeUrban))
   projection(Urban) <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
   HydeDensity <- Urban /  area(Urban)
   theseLayers <- layerNames(Urban)
   newLayers <- paste(theseLayers,"density",sep="_")
   allLayers <- c(theseLayers,newLayers)
   for (layers in 1:nlayers(HydeDensity)){
     r     <- raster(HydeDensity, layer = layers)
     Urban <- addLayer(Urban, r)
   }
   layerNames(Urban) <- allLayers
   writeRaster(Urban,file.path(HYDE_DIR, HYDE.URBAN.RASTER, fsep = .Platform$file.sep ))
 } else{
   print("Hyde raster already created")
 }
 
if (!(LANDUSE.RASTER %in% basename(getFile))){ 
        
       presentFiles <- list.files(LULC_DIR,full.names = TRUE, pattern = ".asc")
       layers <- ""
       
       if (length(presentFiles) > 0){
          for ( thisFile in 1: length(presentFiles)){
               fn1 <- presentFiles[thisFile]
               if (basename(fn1) == IRRIGATED.FILE) layers  <- c(layers,"PctIrrigated")
               if (basename(fn1) == URBAN.LAND.FILE) layers <- c(layers,"PctUrbanland")
               if (basename(fn1) == CULTIVATED.FILE) layers <- c(layers,"PctCultivated")
               if (basename(fn1) == RAINFED.FILE) layers    <- c(layers,"PctRainfed")
               if (basename(fn1) == FOREST.FILE) layers     <- c(layers,"PctForest")
               if (basename(fn1) == GRASSLAND.FILE) layers  <- c(layers,"PctGrassland")
               if (basename(fn1) == NVG.FILE) layers        <- c(layers,"PctSparse")
               
               print(fn1)                
               r <- raster(fn1)               
               projection(r) <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0"
               if ( thisFile == 1){
                 landuseBrick <- stack(r, nl = length(presentFiles))                         
               } else{                  
                 landuseBrick <- addLayer(landuseBrick,r)                 
              }           
         }
        layers <- layers[2:length(layers)]
         
         layerNames(landuseBrick) <- layers 
         writeRaster(landuseBrick, file.path(LULC_DIR,LANDUSE.RASTER, fsep = .Platform$file.sep), datatype = "INT1U")
 
        } else {
         print("land use files are missing")
       } 
   } else { 
    print("land use raster created already")
}
 
 
if ( BLUEWATER.FILE %in% basename(getFile)){
  if (!(BLUEWATER.RASTER %in% basename(getFile))){
    
   y<- 180*60 
   x<- 360*60 
  world <- raster(nrows = y,ncols = x,xmn=-180, xmx=180, ymn=-90, ymx=90, 
                  crs ="+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs +towgs84=0,0,0")
   bluelayer <- sub(".shp", "", BLUEWATER.FILE, fixed = TRUE)
   water <- readOGR(dsn = BLUEWTR_DIR, layer = bluelayer)
   bluewater <- rasterize(water,world, field = "GRIDCODE")
   
  writeRaster(bluewater, filename =  file.path(BLUEWTR_DIR, BLUEWATER.RASTER, fsep =.Platform$file.sep),datatype = 'INT1U')
  } else {
    print("Bluewater raster already created")
  }
} else {
  print("bluewater files are missing")
}


}