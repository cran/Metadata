\name{NAVO.URL}
\alias{NAVO.URL}
\docType{data}
\title{ Url to land mask/distance to coast data
 
}
\description{ GHRSST group uses a land mask to do SST retrievals. This land mask is
 available in 1km resolution and every cell represents distance from coast.
 
}
\usage{ NAVO.URL }
\format{
  The format is:
 chr "https://www.ghrsst.org/files/
      download.php?m=documents&f=NAVO-lsmask-world8-var.dist5.5.nc.bz2"
}
\details{ From the web site
  "he NAVOCEANO SST processing software only generates SST retrievals for pixels 
  determined to be over water. A global land/sea tag file is utilized within the 
  processing software to make the determination before a SST retrieval is generated. 
  Prior to April 2002, NAVOCEANO used a global 7km land/sea tag file to make the 
  decision. Since April 2002, NAVOCEANO has utilized a 1km land/sea tag file. 
  The 1km file was derived from a 1km land sea mask from USGS and from the GTOPO30 
  land mask from USGS. The land mask covers latitudes 80.3N to 80.3S and all 
  longitudes and includes all coastal regions and lakes. Each 1km land mask cell 
  also contains the distance that the cell is from land. This value is zero over 
  land and up to a maximum of 50km for cells over water"
  
}
\source{
 \url{https://www.ghrsst.org/data/ghrsst-data-tools/navo-ghrsst-pp-land-sea-mask/}
}
\references{
  \url{https://www.ghrsst.org/data/ghrsst-data-tools/}
 }
\examples{
print(NAVO.URL)
 
}
 
\keyword{urls}
