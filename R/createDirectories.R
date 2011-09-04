createDirectories <- function(){
  
  if(!file.exists(GMT_DIR)) dir.create(GMT_DIR)
  if(!file.exists(GPW_DIR)) dir.create(GPW_DIR)
  if(!file.exists(GRMPURB_DIR)) dir.create(GRMPURB_DIR)
  if(!file.exists(HYDE_DIR)) dir.create(HYDE_DIR)
  if(!file.exists(ISA_DIR)) dir.create(ISA_DIR)
  if(!file.exists(MODIS_DIR)) dir.create(MODIS_DIR)
  if(!file.exists(LND_DIR)) dir.create(LND_DIR)
  if(!file.exists(NAVO_DIR)) dir.create(NAVO_DIR)
  if(!file.exists(NIGHT_DIR)) dir.create(NIGHT_DIR)  
  if(!file.exists(AIRPORTS_DIR)) dir.create(AIRPORTS_DIR)   
  if(!file.exists(LULC_DIR)) dir.create(LULC_DIR)
  if(!file.exists(BLUEWTR_DIR)) dir.create(BLUEWTR_DIR)
  
}