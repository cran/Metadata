\name{MODIS.URL}
\alias{MODIS.URL}
\docType{data}
\title{ Url to Modis data
 
}
\description{ url to the latest Modis dataset detailing urban extent at 500m.
 in addition 16 other land classifications are given. The modis dataset
 must be downloaded after permission is given by the PI.
 The dataset required consists of all the land cover classes including urban extent.
 Global IGBP Land Cover Map (classes 1-17), including urban extent (class 13).
 After requesting the datset you will be directed to an ftp and given a password.
 download the file that contains all land cover classes
 2002v5_igbp1_geog_mos.bip.zip.
 Move it to the modis directory, unzip and leave all files in place
 
}
\usage{ MODIS.URL }
\format{
  The format is:
 chr "http://www.sage.wisc.edu/people/schneider/research/data_readme.html"
}
\details{ from the web site
 "In both datasets, urban areas (coded class 13) are defined based on physical 
 attributes: urban areas are places that are dominated by the built environment.
 The 'built environment' includes all non-vegetative, human-constructed elements,
 such as buildings, roads, runways, etc. (i.e. a mix of human-made surfaces and 
 materials), and 'dominated' implies coverage greater than or equal to 50 percent
 of a given landscape unit (here, the pixel). Pixels that are predominantly vegetated
 (e.g. a park) are not considered urban, even though in terms of land use, they may
 function as urban space. Although 'impervious surface' is often used to characterize
 urban areas within the remote sensing literature, we prefer the more direct term 
 'built environment' because of uncertainty and scaling issues surrounding the 
 impervious surface concept. Finally, we also define a minimum mapping unit:
 urban areas are contiguous patches of built-up land greater than 1 km 2."
}
\source{
 \url{http://www.sage.wisc.edu/people/schneider/research/data_readme.html}
}
\references{
 Schneider, A., M. A. Friedl and D. Potere (2009) A new map of global
 urban extent from MODIS data. Environmental Research Letters, volume 4, article 044003.

 Schneider, A., M. A. Friedl and D. Potere (2010) Monitoring urban areas 
 globally using MODIS 500m data: New methods and datasets based on urban ecoregions. 
 Remote Sensing of Environment, vol. 114, p. 1733-1746.
}
\examples{
print(MODIS.URL)
 
}
 
\keyword{urls}
