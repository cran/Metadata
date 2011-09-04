\name{BLUEWATER.FILE}
\alias{BLUEWATER.FILE}
\docType{data}
\title{ File name of blue water file
 
}
\description{ Filename of dataset that contains shapefile of
  the blue water irrugation data
 
}
\usage{ BLUEWATER.FILE }
\format{
  The format is:
 chr "blue_lpjml.shp"
}
\details{The shapefile is in the zip file. The shapefile is read
  during the \code{createRasters} function by the package rgdal.
  then it is rasterized from polygons to a raster object
 
}
\source{\url{http://atlas.gwsp.org/index.php}
 Please cite this map as: "GWSP Digital Water Atlas (2008). 
  Map 64: Blue Water Consumption on Cropland (V1.0). 
  Available online at http://atlas.gwsp.org."
}
\references{
 Dr. Dieter Gerten, Potsdam-Institute for Climate Impact Research,
 Earth System Analysis Research Domain,
  P.O. Box 60 12 03, 14412 Potsdam, Germany; 
  E-mail: gerten@pik-potsdam.de
}
\examples{
print(BLUEWATER.FILE)
 
}
 
\keyword{filenames}
