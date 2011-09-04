\name{GRMPURB.URL}
\alias{GRMPURB.URL}
\docType{data}
\title{ Url for GRUMP urban extent
 
}
\description{ This is the url that must be used to download the Grump Urban
  extent data. This file is required for \code{collateMetadata} to function
  properly. Because of registration issues the user must download this
  data manually and copy the data into the GRUMP directory.
  Directions are in the man pages of this package. Essentially,
  proceed to this url \url{http://sedac.ciesin.columbia.edu/gpw/global.jsp}
  select the following from the menus:
  GRUMPv1
  dataset: Urban Extents Grid
  format: .bil
  resolution: 30 arc seconds
  Then "get Data". After registering or downloading the data as a guest, copy
  the zip file to the GRMP_URBAN directory. Unzip and leave all the files in place
 
}
\usage{ GRMPURB.URL }
\format{
  The format is:
 chr "http://sedac.ciesin.columbia.edu/
 legacy?url=http://sedac.ciesin.columbia.edu/gpw/global.jsp"
}
\details{
 proceed to this url \url{http://sedac.ciesin.columbia.edu/gpw/global.jsp}
  select the following from the menus:
  GRUMPv1
  dataset: Urban Extents Grid
  format: .bil
  resolution: 30 arc seconds
  Then "get Data". After registering or downloading the data as a guest, copy
  the zip file to the GRMP_URBAN directory. Unzip and leave all the files in place
}
\source{ sources for GRUMP are listed here
  \url{http://sedac.ciesin.columbia.edu/gpw/documentation.jsp}
 
}
\references{
  Center for International Earth Science Information Network (CIESIN), 
  Columbia University; International Food Policy Research Institute (IFPRI); 
  The World Bank; and Centro Internacional de Agricultura Tropical (CIAT). 2004.
  Global Rural-Urban Mapping Project, Version 1 (GRUMPv1): Urban Extents Grid. 
  Palisades, NY: Socioeconomic Data and Applications Center (SEDAC), 
  Columbia University. 
  Available at http://sedac.ciesin.columbia.edu/gpw.[08/01/2011].
}
\examples{
print(GRMPURB.URL)
 
}
 
\keyword{urls}
