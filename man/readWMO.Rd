\name{readWMO}
\alias{readWMO}
 
\title{ a function to read WMO station inventory
 
}
\description{ A function that reads the downloaded WMO file.
  In addition the function transforms the latitude and longitide
  from degrees, minutes and seconds into decimal degrees. In
  addition, several columns of data are added. These columns
  represent the decoded values of certain variables. Specifically,
  the WMO data includes a column with several other variables encoded
  ( C= coastal, etc), these are decoded and given  their own
  columns
 
}
\usage{
readWMO(filename = "WMO.dat")
}
 
\arguments{
  \item{filename}{ When the WMo station file is downloaded it is given
  the local name of "WMO.dat"
 
}
}
\details{ The WMO file is read as a delimited file. The degrees/minutes
  /seconds representation for location is turned from a character based
  variable into a numerical variable. In addition columns are added
  to represent the type of station this is. Code tables are presented
  here  \url{http://www.wmo.int/pages/prog/www/ois/volume-a/9ACodeTables9805.html} 
  The final column of the WMO data is expanded so that individual codes have their
  own columns.
 
}
\value{ returns a dataframe
 
}
\references{
 \url{http://www.wmo.int/pages/prog/www/ois/volume-a/VolA_Annex.doc}
 \url{http://www.wmo.int/pages/prog/www/ois/volume-a/9ACodeTables9805.html}
 \url{http://www.wmo.int/pages/prog/www/ois/volume-a/vola-home.htm}
}
\author{Steven Mosher
 
}
 
 
 
\keyword{filetools}
 
