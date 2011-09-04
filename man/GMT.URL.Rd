\name{GMT.URL}
\alias{GMT.URL}
\docType{data}
\title{ Url for distance from coast data
 
}
\description{ Url for distance from coast
 
}
\usage{ GMT.URL }
\format{
  The format is:
 chr "http://oceancolor.gsfc.nasa.gov/DOCS/DistFromCoast/
 GMT_intermediate_coast_distance_01d.zip"
}
\details{ The url points to the .01 degree file which is described below:
  "In June of 2009, we of NASA's Ocean Biology Processing Group pressed our 
 computer hardware into the service of generating a global data set of distances 
 from the nearest coastline. Creation of the data set had been advocated by Rick 
 Stumpf of NOAA's National Ocean Service while he was on assignment here at 
 NASA / Goddard Space Flight Center. The new data set would be useful for generating 
 coastal level-2 and level-3 ocean color products among other things. The original 
 concept for producing the data set came from Eric Leuliette of the NOAA Satellite
 Altimetry Lab.

 We generated the data set at a global grid increment of 0.04 degrees using the 
 Generic Mapping Tools (GMT) package. The coastline came from a dump of the 
 intermediate database distributed with GMT  . Distances were 
 computed with the GMT grdmath LDIST operator. Rick then interpolated the data to
 0.01-degree resolution and saved the data as a GeoTiff image.

 You can either download the original 0.04-degree data set as a compressed text 
 file with records [longitude latitude distance] (where distance is in kilometers),
 or you can download the interpolated 0.01-degree GeoTiff packed together with a 
 brief description file.

 A signed version of the 0.04-degree data set is also available. In this file,
 negative distances represent locations that are considered to be over land according 
 to the GMT coastline database. Landlocked bodies of water (e.g. the Caspian Sea) 
 are also considered to be land in these data sets."
  
}
\source{
  \url{http://oceancolor.gsfc.nasa.gov/DOCS/DistFromCoast/}
}
\references{Produced by 
  Rick Stumpf (NOAA, National Ocean Service) 
  richard.stumpf at noaa.gov
  and Norman Kuring at the NASA Ocean Biology Processing Group,
  Norman.A.Kuring at nasa.gov
  June 2009

  based on concept of Eric Leuliette of NOAA Satellite Altimetry Lab. 
  
}
\examples{
print(GMT.URL)
 
}
 
\keyword{urls}
