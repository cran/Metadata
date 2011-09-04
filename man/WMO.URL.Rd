\name{WMO.URL}
\alias{WMO.URL}
\docType{data}
\title{ Url to WMO station metadata
 
}
\description{ This url points to the updated WMO station data. In 2010 the WMO
  updated the positional accuracy of station locations to include degrees, minutes
  and seconds. The url points to the base ftp directory. The code in this package
  uses Curl to fetch the directory and take the most current file. The file
  is then downloaded to the WMO directory
 
}
\usage{ WMO.URL }
\format{
  The format is:
 chr "ftp://ftp.wmo.ch/wmo-ddbs/VolA_New/"
}
\details{
 \url{http://www.wmo.int/pages/prog/www/ois/volume-a/VolA_Annex.doc}
 \url{http://www.wmo.int/pages/prog/www/ois/volume-a/9ACodeTables9805.html}
}
\source{
 \url{http://www.wmo.int/pages/prog/www/ois/volume-a/vola-home.htm}
}
 
\examples{
print(WMO.URL)
 
}
 
\keyword{urls}
