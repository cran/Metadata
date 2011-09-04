ftpDir  <- getURL(WMO.URL,ftp.use.epsv = FALSE, ftplistonly = TRUE)
dates   <- strsplit(ftpDir,split= "Pub9volA") 
dates   <- unlist(dates)
dates   <- dates[2:length(dates)]
dates   <- sub("x.flatfile\r\n", "", dates, fixed = TRUE)
makeURL <- paste(WMO.URL, "Pub9volA", as.character(max(as.numeric(dates))), "x.flatfile", sep = "")
download.file(makeURL, "WMO.dat", mode = "wb")

WMO <- readWMO()

print(names(WMO))

baseWMO <- data.frame(Id = WMO$IndexNbr, Name =WMO$StationName,Lon=WMO$WmoLon,
                      Lat = WMO$WmoLat,Airport= WMO$wmoAirport,Coast = WMO$wmoCoast)

baseWMO <- collateMetadata(baseWMO)