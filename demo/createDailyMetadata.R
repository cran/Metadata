library(GhcnDaily)
createDirectories()
downloads()
createRasters()
invFile      <- downloadDailyInventory()
MetadataFile <- downloadDailyMetadata()
Inventory    <- readDailyInventory(invFile, elements = c("TMAX","TMIN"))
Metadata     <- readDailyMetadata(MetadataFile)
stationId    <- unique(Inventory$Id)

dex          <- which(Metadata$Id %in% stationId)
Metadata     <- Metadata[dex,]
if(identical(Metadata$Id,stationId) == FALSE) stop(" Some error in inventory")

Tmax <- Inventory[which(Inventory$Element == "TMAX" ),]
Tmin <- Inventory[which(Inventory$Element == "TMIN" ),]
Merged <- merge(Tmax,Tmin, by.x ="Id", by.y ="Id", all = TRUE)
Merged <- Merged[,c(1,5,6,10,11)]
colnames(Merged) <- c("Id","FirstYearTmax","LastYearTmax","FirstYearTmin","LastYearTmin")
Metadata <- merge(Metadata,Merged, by.x="Id", by.y ="Id", all = TRUE)

Metadata <- collateMetadata(Metadata)
write.table(Metadata,"GhcnDaily.inv")
