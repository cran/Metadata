\name{NIGHT.URL}
\alias{NIGHT.URL}
\docType{data}
\title{ Url to Nightlights data
 
}
\description{ Url to nightlights data.
 
}
\usage{ NIGHT.URL }
\format{
  The format is:
 chr "http://www.ngdc.noaa.gov/dmsp/data/radcal/F16_2006_radiance.tgz"
}
\details{ The Nightlights dataset used here is the radiance calibrated dataset:
  "The Operational Linescan System (OLS) flown on the Defense Meteorological 
  Satellite Program (DMSP) satellites, has a unique capability to record low light 
  imaging data at night worldwide. These data are archived at the National Oceanic
  and Atmospheric Administration (NOAA) National Geophysical Data Center (NGDC). 
  The useful data record stretches back to 1992 and is ongoing. The OLS visible 
  band detector observes radiances about one million times dimmer than most other
  Earth observing satellites. The sensor is typically operated in a high gain setting 
  to enable the detection of moonlit clouds. However, with six bit quantization and 
  limited dynamic range, the recorded data are saturated in the bright cores of 
  urban centers. A limited set of observations have been obtained at low lunar 
  illumination were obtained where the gain of the detector was set significantly 
  lower than its typical operational setting (sometimes by a factor of 100). 
  By combining these sparse data acquired at low gain settings with the operational
  data acquired at high gain settings, we have produced a global nighttime lights
  product for 2006 and other years to follow with no sensor saturation. 
  This product can be related to radiances based on the pre-flights sensor calibration."
  
}
\source{
 \url{http://www.ngdc.noaa.gov/dmsp/}
}
\references{ see various publications here
 \url{http://www.ngdc.noaa.gov/dmsp/pubs.php}
  Also :
  Baugh, Kimberly, Chris Elvidge, Tilottama Ghosh, Daniel Ziskin, 2010,
  "Development of a 2009 Stable Lights Product using DMSP-OLS data", 
  Proceedings of the 30th Asia-Pacific Advanced Network Meeting, 114-130

  Doll, Christopher N.H., 2010, "Population detection profiles of DMSP-OLS
  night-time imagery by regions of the world", Proceedings of the 30th 
  Asia-Pacific Advanced Network Meeting, 191-207
}
\examples{
print(NIGHT.URL)
 
}
 
\keyword{urls}
