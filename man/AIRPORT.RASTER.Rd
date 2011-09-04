\name{AIRPORT.RASTER}
\alias{AIRPORT.RASTER}
\docType{data}
\title{File name of a raster of airport locations
 
}
\description{The airport locations are rasterized into a raster
  dataset which allows for simple calculations of the distance
  from an airport. The raster is a 1km raster with a value of
  1 if an airport is present in the grid square and NA if there
  is no airport in the grid.
 
}
\usage{ AIRPORT.RASTER }
\format{
  The format is:
 chr "airports.grd"
}
\details{The raster is created by the \code{createRaster} function.
  saved to the "Airport" directory and named using the string
  associated with AIRPORT.RASTER. the format is native raster
  package format
 
}
\source{
\url{http://www.ourairports.com/}
}
\references{
 \url{http://www.ourairports.com/about.html#credits}
  They include the FAA and several dedicated individuals.
 
}
\examples{
print(AIRPORT.RASTER)
 
}
 
\keyword{rasters}
