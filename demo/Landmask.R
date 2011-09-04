
 
Modis <- raster(file.path(MODIS_DIR, MODIS.RASTER, fsep = .Platform$file.sep))
Water <- reclass(Modis,rcl = c(1,500,1))
writeRaster(Water, 
            filename = file.path(MODIS_DIR,"LandWaterMask.grd",fsep = .Platform$file.sep),
            datatype = "LOG1S")
