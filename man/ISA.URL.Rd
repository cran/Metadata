\name{ISA.URL}
\alias{ISA.URL}
\docType{data}
\title{ Url to ISA data
 
}
\description{ Url to ISA data. Impervious surface data indicates the percentage
 of a grid cell ( 1km) that consists of impervious structure. At 10 percent of
 impervious surface enviromental impacts are detected. 
 
}
\usage{ ISA.URL }
\format{
  The format is:
 chr "http://www.ngdc.noaa.gov/dmsp/data/web_data/isa/ngdc_isa_gcs_product.tgz"
}
\details{ taken from the web site:
  "We present the first global inventory of the spatial distribution and density 
  of constructed impervious surface area (ISA). Examples of ISA include roads, 
  parking lots, buildings, driveways, sidewalks and other manmade surfaces. While 
  high spatial resolution is required to observe these features, the product we made
  is at one km2 resolution and is based on two coarse resolution indicators of ISA.
  Inputs into the product include the brightness of satellite observed nighttime lights
  and population count. The reference data used in the calibration were derived from 30
  meter resolution ISA estimates of the USA from the U.S. Geological Survey. Nominally 
  the product is for the years 2000-01 since both the nighttime lights and reference 
  data are from those two years. We found that 1.05 percent of the United States land area 
  is impervious surface (83,337 km2 ) and 0.43 percent of the world's land surface (579,703 km2 )
  is constructed impervious surface. China has more ISA than any other country
  (87,182 km2 ), but has only 67 m2 of ISA per person, compared to 297 m2 per person 
  in the USA. Hyrdologic and environmental impacts of ISA begin to be exhibited when 
  the density of ISA reaches 10 percent of the land surface. An examination of the areas with 
  10 percent or more ISA in watersheds finds that with the exception of Europe, the majority 
  of watershed areas have less than 0.4 percent of their area at or above the 10 
  percent ISA threshold. The authors believe the next step for improving the product 
  is to include reference 
  ISA data from many more areas around the world."
   
}
\source{
 \url{http://www.ngdc.noaa.gov/dmsp/}
}
\references{
 Elvidge, C.D., Tuttle, B.T., Sutton,, P.C., Baugh, K.E., Howard, 
 A.T., Milesi, C., Bhaduri, B., Nemani R., 2007, 
 "Global distribution and density of constructed impervious surfaces", Sensors, 7, 1962-1979
}
\examples{
print(ISA.URL)
 
}
 
\keyword{urls}
