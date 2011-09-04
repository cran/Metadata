\name{GPW.FILE}
\alias{GPW.FILE}
\docType{data}
\title{file name of Global Population file
 
}
\description{ Filename for the BIL file of GPW Population data
  This file is the adjusted population density for the year 2000
 
}
\usage{ GPW.FILE }
\format{
  The format is:
 chr "glds00ag.bil"
}
\details{ The Gridded Population of the World GPW file must be downloaded manually and unpacked.
 This filename points to the year 2000 data. That file must be downloaded for the package
 to work. 
 
}
\source{
  url{http://sedac.ciesin.columbia.edu/gpw/}
}
\references{
   Center for International Earth Science Information Network (CIESIN), 
   Columbia University; and Centro Internacional de Agricultura Tropical (CIAT).
   2005. Gridded Population of the World, Version 3 (GPWv3). Palisades, 
   NY: Socioeconomic Data and Applications Center (SEDAC), Columbia University.
   Available at http://sedac.ciesin.columbia.edu/gpw.[08/01/2011].
}
\examples{
print(GPW.FILE)
 
}
 
\keyword{filenames}
