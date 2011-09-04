\name{collateMetadata}
\alias{collateMetadata}
 
\title{collates metadata for a vector of lat/lon locations
 
}
\description{After dataset are downloaded and placed in the appropriate
  directories and after some preprocessing ( \code{createRasters}) this
  function can be used to create a dataframe fo all the metadata. The function
  is fed a data.frame that must have longitude and latitude. Then every
  GIS dataset is queried to extract the metadata at those latitude longitude
  points. This process takes a considerable amount of time and progress
  is noted along the way. Some steps can take 1.5 hours on a fast PC.
 
}
\usage{collateMetadata(LonLat)
}
 
\arguments{
  \item{LonLat}{ A data.frame with at least two columns. One column
  must be named "Lon" and another must be named "Lat". Additional
  columns will be added to the dataframe and returned when the
  process completes. There are over 50 columns added. The entire
  collate process can take 8 hours on a fast PC
 
}
}
\details{ Very simply a dataframe of locations is fed to a series
  of calls from the \code{raster} package. raster is used to
  extract values from disparite datasets including: distance from coast,
  population density, historical population density, land cover from two
  different datsets, urban extent, nightlights, ISA, land use categories,
  irrigation, blue water irrigation, and airports. The resolution of these
  datasets runs from 15 arc seconds to 5 minutes. In addition for certain
  variables we maximums for some variables within 5km.
  For example, with nightlights we collect the brightest light within 5km
    of a location. This simply uses the \code{extract} call from the
    raster package. 
 }
\value{ Returns a dataframe with columns for the metadata extracted from
 the datasets.
 
}
\references{ See the individual dataset urls for references
 
}
\author{Steven Mosher
 
}
 

 
 
\keyword{ rasters }
 
