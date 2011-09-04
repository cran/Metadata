\name{AIRPORTS.URL}
\alias{AIRPORTS.URL}
\docType{data}
\title{url to the airport locations file
 
}
\description{url to the airports locations file
 
}
\usage{ AIRPORTS.URL }
\format{
  The format is:
 chr "http://www.ourairports.com/data/airports.csv"
}
\details{ A url used by the downloads function to get the airport
  locations. The airport locations in this dataset are used to create
  a binary 1km raster where every cell is indicated to be an airport
  cell or not.
 
}
\source{\url{http://www.ourairports.com/}
 
}
\references{\url{http://www.ourairports.com/about.html#credits}
  They include the FAA and several dedicated individuals.
 
}
\examples{
print(AIRPORTS.URL)
 
}
 
\keyword{urls}
