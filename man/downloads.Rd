\name{downloads}
\alias{downloads}
 
\title{Function to download metadata files
 
}
\description{ This function downloads a whole collection of files
  and unpacks them according to their compression scheme. The files
  that are downloaded include files from the following urls
  \code{\link{GMT.URL}}\cr
  \code{\link{ISA.URL}}\cr
  \code{\link{NAVO.URL}}\cr
  \code{\link{NIGHT.URL}}\cr
  \code{\link{AIRPORTS.URL}}\cr
  \code{\link{RAINFED.URL}}\cr
  \code{\link{IRRIGATED.URL}}\cr
  \code{\link{CULTIVATED.URL}}\cr
  \code{\link{FOREST.URL}}\cr
  \code{\link{GRASS.URL}}\cr
  \code{\link{SPARSE.URL}}\cr
  \code{\link{URBAN.URL}}\cr
  \code{\link{WMO.URL}}\cr
  \code{\link{BLUEWATER.URL}}\cr
  
  In addition, Other files must be downloaded manually after
  registration. These are covered in the details section
 
}
\usage{downloads()
}
 
\details{data that has free and open access is downloaded 
  programmatically. There are additional data sources
  where registration and manual downloads are required
  at this time. In the case of MODIS, the PI must be contacted.
  The URLS for these files are as follows
  \code{\link{GPW.URL}}\cr
  \code{\link{GRMPURB.URL}}\cr
  \code{\link{HYDE.URL}}\cr
  \code{\link{LND.URL}}\cr
  \code{\link{MODIS.URL}}\cr
  
  In order to collect and assign all of the metadata required by
  the function \code{collateMetadata}, the user should follow
  the instructions on the manual pages of the urls. Those
  pages describe both the registration process and the files to
  download.
 
 
}
\value{ The side effect is files downloaded to directories
 
}
\references{ See the individual man pages of each dataset
 
}
\author{Steven Mosher
 
}
 
 
\keyword{ filetools}
 
