\name{MODIS.RASTER}
\alias{MODIS.RASTER}
\docType{data}
\title{ filename for the modis raster
 
}
\description{The modis file is read in and minor adjustements
  are made to its extent. After adjustment, it is written out as a 
  native raster format
 
}
\usage{ MODIS.RASTER }
\format{
  The format is:
 chr "modis.grd"
}
\details{ The tasrer file as it exists is missing 5 rows of data at the south
  pole. When this is read in rgdal and raster set the extent to -90. The 
  function \code{createRasters} corrects this and outputs a corrected raster
   
}
\source{
 see the url for modis
}
 
\examples{
print(MODIS.RASTER)
 
}
 
\keyword{rasters}