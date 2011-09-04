\name{ISA.RASTER}
\alias{ISA.RASTER}
\docType{data}
\title{ filename for ISA raster data
 
}
\description{A raster of ISa values is created specifically
  for calculating area values. In the source ISA file the ISA value over water
  is given as -1. In the raster file this value is recoded to zero.
  This file can be used to find the average ISA value near to a location.
  Since -1 has been recoded to 0, averages should be correct even when the 
  station is on a coast
 
}
\usage{ ISA.RASTER }
\format{
  The format is:
 chr "isa.grd"
}
 
\examples{
print(ISA.RASTER)
 
}
 
\keyword{rasters}