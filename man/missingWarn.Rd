\name{missingWarn}
\alias{missingWarn}
 
\title{ a function to create a filename and warn if files are missing
 
}
\description{ The function wraps a call to \code{file.exists} and
 returns the filename if all elements exist, otherwise NULL
 
}
\usage{missingWarn(name)
}
 
\arguments{
  \item{name}{ a file name
 
}
}
\details{ if the filename exists it is returned, otherwise
  NULL is returned with a warning
 
}
\value{ simply returns the value of name if the file
  exists or NULL with a warning
 
}
 
\author{Steven Mosher
 
}
 
 
\examples{
  test <- missingWarn("test.txt")
}
 
\keyword{ filetools }
 