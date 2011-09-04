\name{MODIS.BINARY.RASTER}
\alias{MODIS.BINARY.RASTER}
\docType{data}
\title{ filename of a specialize modis file
 
}
\description{ This raster contains Modis data that has been reduced
  to a binary file ( urban/not urban) and then aggregated to 1km
  resolution. The source modis file has 17 levels of landcover
  including the "built" or urban class. That raster is reclassed
  as a binary dataset and then aggregated to 1km resolution
 
}
\usage{ MODIS.BINARY.RASTER }
\format{
  The format is:
 chr "modisBinary.grd"
}
\details{ cells will have values of 0,.25, .5, .75 or 1. A value of
 1 occurs is all four 500m cells in a 1km bin are urban
  
}
 
\examples{
print(MODIS.BINARY.RASTER)
 
}
 
\keyword{rasters}
