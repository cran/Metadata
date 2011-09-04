\name{HYDE.URL}
\alias{HYDE.URL}
\docType{data}
\title{ URl for Hyde data
 
}
\description{ Url for hyde population data The Hyde population data must be downloaded
 manullay and unzipped in the Hyde directory. Proceed to the following Url.
 \url{http://themasites.pbl.nl/en/themasites/hyde/download/registration/registrationform.html}
 enter your email and information. You will be given the following url
 \url{ftp://ftp.mnp.nl/hyde/} From that ftp navigate to the following directory
 \url{ftp://ftp.mnp.nl/hyde/hyde31_final/} download the zip files for 1950 to 2000 that 
 contain the population data. They have the 
  following form \url{ftp://ftp.mnp.nl/hyde/hyde31_final/1950ad_pop.zip}
  download 1950 to 2000AD ( or more if you like). Unzip them in the Hyde directory
  and leave all files in place. Download only a file at a time as the server is not
  entirely reliable
 
}
\usage{ HYDE.URL }
\format{
  The format is:
 chr "http://themasites.pbl.nl/en/themasites/
 hyde/download/registration/registrationform.html"
}
\details{ details are covered in the primary literature and summarized
  at this url \url{http://themasites.pbl.nl/en/themasites/hyde/
  basicdrivingfactors/population/index.html}
  The data is presented by decade in 5 minute bins.
   
}
\source{
   \url{http://themasites.pbl.nl/en/themasites/hyde/index.html}
}
\references{
  Klein Goldewijk, K. , A. Beusen, M. de Vos and G. van Drecht (2011). 
  The HYDE 3.1 spatially explicit database of human induced land use 
  change over the past 12,000 years, Global Ecology and 
  Biogeography20(1): 73-86. DOI: 10.1111/j.1466-8238.2010.00587.x.
}
\examples{
print(HYDE.URL)
 
}
 
\keyword{urls}
