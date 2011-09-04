####################################################################
# Downloads
# Downloads and unpacks all the files that can be downloaded
# by R. Additional files need to be downloaded by hand
#################

downloads <- function(){ 
  createDirectories()
startTime <- Sys.time()

ftpDir  <- getURL(WMO.URL,ftp.use.epsv = FALSE, ftplistonly = TRUE)
dates <- strsplit(ftpDir,split= "Pub9volA") 
dates <- unlist(dates)
dates <- dates[2:length(dates)]
dates <- sub("x.flatfile\r\n", "", dates, fixed = TRUE)
makeURL <- paste(WMO.URL, "Pub9volA", as.character(max(as.numeric(dates))), "x.flatfile", sep = "")
download.file(makeURL, "WMO.dat", mode = "wb")

dzip <- file.path(GMT_DIR, basename(GMT.URL), fsep = .Platform$file.sep)
download.file(GMT.URL, dzip, mode = "wb")
unzip(dzip, exdir = GMT_DIR)

dzip <- file.path(BLUEWTR_DIR, basename(BLUEWATER.URL), fsep = .Platform$file.sep)
download.file(BLUEWATER.URL, dzip, mode = "wb")
unzip(dzip, exdir = BLUEWTR_DIR)

dzip <- file.path(ISA_DIR, basename(ISA.URL), fsep = .Platform$file.sep) 
download.file(ISA.URL, dzip, mode = "wb")
untar(dzip, exdir = ISA_DIR,  tar = "internal")

dzip <-file.path(NIGHT_DIR, basename(NIGHT.URL), fsep =.Platform$file.sep)
download.file(NIGHT.URL, dzip, mode = "wb")
untar(dzip,exdir = NIGHT_DIR, tar = "internal")
 
dzip <-file.path(AIRPORTS_DIR,basename(AIRPORTS.URL),fsep = .Platform$file.sep)
download.file(AIRPORTS.URL, dzip, mode = "wb")
 
dzip <-file.path(LULC_DIR,basename(RAINFED.URL),fsep = .Platform$file.sep)
download.file(RAINFED.URL, dzip, mode = "wb")    

dzip <-file.path(LULC_DIR,basename(IRRIGATED.URL),fsep = .Platform$file.sep)
download.file(IRRIGATED.URL, dzip, mode = "wb")

dzip <-file.path(LULC_DIR,basename(CULTIVATED.URL),fsep = .Platform$file.sep)
download.file(CULTIVATED.URL, dzip, mode = "wb")

dzip <-file.path(LULC_DIR,basename(FOREST.URL),fsep = .Platform$file.sep)
download.file(FOREST.URL, dzip, mode = "wb")

dzip <-file.path(LULC_DIR,basename(GRASS.URL),fsep = .Platform$file.sep)
download.file(GRASS.URL, dzip, mode = "wb")

dzip <-file.path(LULC_DIR,basename(SPARSE.URL),fsep = .Platform$file.sep)
download.file(SPARSE.URL, dzip, mode = "wb")
 
dzip <-file.path(LULC_DIR,basename(URBAN.URL),fsep = .Platform$file.sep)
download.file(URBAN.URL, dzip, mode = "wb")

dzip  <- file.path(NAVO_DIR,NAVO.BZ.FILE,fsep = .Platform$file.sep)
navoBz2 <- getBinaryURL(NAVO.URL,ssl.verifypeer = FALSE)
writeBin(navoBz2, dzip)
bunzip2(dzip)

endTime <- Sys.time()
elapsed <- endTime-startTime

print(elapsed) 
print(" additional metadata resources must be downloaded manually")
print(" Grump Urban extent data")
print(" GPW Population data")
print(" Modis Urban Extent")
print(" Hyde Population Data") 
print(" Consult the Instructions for Downloading")
}
    