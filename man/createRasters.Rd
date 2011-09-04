\name{createRasters}
\alias{createRasters}
 
\title{ creates a series of rasters from source data
 
}
\description{ A subset of the data downloaded need to be read into
  "rasters" so that data can be extracted from them in the correct manner.
  Also, some datasets are better processed if the invidual files are
  collected into bands or layers of one monolithic file. Finally, some
  data need to be "reclassed" before it can be processed. For example,
  ISA data has a value of (-1) where there is water. Averaging over
  cells never to coasts is corrupted unless this is addressed.
  This function takes all the datasets that need reformating and
  it reformats them accordingly, outputing native raster format
 
}
\usage{
createRasters()
}
 
\details{ The following datasets are created. The MODIS dataset is
  processed to create two rasters. The first raster adjusts the data
  for missing latitude rows at the south pole. 5 rows of data are
  missing. In addition, a special binary MODIS raster is created
  at 1km resolution.every 500m cell is reclassed into one of two
  categories: urban/non urban. It is then aggregated to 1km.
  The Hyde data ( population) is read into three seperate rasters
  each with multiple layers of data. Every layer is a decade. As 
  ascii data hyde is slow to read in so it it is read in and written
  out in native raster format. The ISA data is also reclassed so that
  ISA over water is zero rather than -1. An Airport raster is created
  from airport locations. Cells here are TRUE if there is an airport in 
  the cell. A Bluewater raster is created from a shapefile. Finally,
  a landuse raster is created from 7 landuse files. Each file becomes
  a layer in the monolithic file
 
}
\value{ The side effect is a variety of rasters written to their
  directories
 
}
\references{ See the individual datasets for references
 
}
\author{Steven Mosher
 
}
 

 
 
 
\keyword{ filetools }
 
