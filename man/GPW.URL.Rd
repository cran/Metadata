\name{GPW.URL}
\alias{GPW.URL}
\docType{data}
\title{ url for Gridded Population of the World V3. global population data
 
}
\description{This url points to the menus for downloading GPW required for this package.
  see the download instructions in the manula package for the main package.
  Simply, download GPW3  population density using the menus.Make the following
  selection:  GPW: Population density: Format: BIL : Resolution: 2.5 minutes
  Year: 2000. At a minimum the software in this package \code{collateMetadata}
  relies on those files being present
 
 
}
\usage{ GPW.URL }
\format{
  The format is:
 chr "http://sedac.ciesin.columbia.edu/
  legacy?url=http://sedac.ciesin.columbia.edu/gpw/global.jsp"
}
\details{ see material here for more detail
  \url{http://sedac.ciesin.columbia.edu/gpw/aboutus.jsp}
  To download proceed to this page
  \url{http://sedac.ciesin.columbia.edu/gpw/global.jsp}
  select: Population Density Grid  ( for GPW)
  select: .bil  for format
  select: 2.5 minutes for resolution
  select: 2000 for year.
  Then  "Get Data". You will be transfered to a page where you can register
  or get the data as a guest. Download the zip file. Move the zip file to
  The GPW directory and unpack it. Leave all the files in place
  
}
\source{ There are various sources that go into the final product.
 {http://sedac.ciesin.columbia.edu/gpw/documentation.jsp}
  
}
\references{Center for International Earth Science Information Network (CIESIN), 
  Columbia University; and Centro Internacional de Agricultura Tropical 
  (CIAT). 2005. Gridded Population of the World, Version 3 (GPWv3). 
  Palisades, NY: Socioeconomic Data and Applications Center (SEDAC), 
  Columbia University. Available at http://sedac.ciesin.columbia.edu/gpw.[08/01/2011].
  
}
\examples{
print(GPW.URL)
 
}
 
\keyword{urls}
