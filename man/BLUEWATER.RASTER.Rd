\name{BLUEWATER.RASTER}
\alias{BLUEWATER.RASTER}
\docType{data}
\title{ A raster created from shapefile of blue water. 
 
}
\description{The blue water shapefile is converted into a
  raster and used for looking up grid values. This is the
  filename of the raster. The raster is in native raster format.
 
}
\usage{ BLUEWATER.RASTER }
\format{
  The format is:
 chr "bluewater.grd"
}
\details{ the function \code{createRasters} reads the shapefile
  and converst the polygons to grid values. The source data is 
  in .5 degree bins and output is in a 1km raster. Values
  are in mm per year, average over 1971-2000.
 
}
\source{
 \url{http://atlas.gwsp.org/index.php}
 Please cite this map as: "GWSP Digital Water Atlas (2008). 
  Map 64: Blue Water Consumption on Cropland (V1.0). 
  Available online at http://atlas.gwsp.org."
}
\references{Dr. Dieter Gerten, Potsdam-Institute for Climate Impact Research,
 Earth System Analysis Research Domain,
  P.O. Box 60 12 03, 14412 Potsdam, Germany; 
  E-mail: gerten@pik-potsdam.de
}
\examples{
print(BLUEWATER.RASTER)
 
}
 
\keyword{rasters}
