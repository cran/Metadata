GPW.URL     <-  "http://sedac.ciesin.columbia.edu/legacy?url=http://sedac.ciesin.columbia.edu/gpw/global.jsp"
GRMPURB.URL <- "http://sedac.ciesin.columbia.edu/legacy?url=http://sedac.ciesin.columbia.edu/gpw/global.jsp"
HYDE.URL    <- "http://themasites.pbl.nl/en/themasites/hyde/download/registration/registrationform.html"
LND.URL     <- "http://www.iscgm.org/gmd/download/regist_form.html"
MODIS.URL   <- "http://www.sage.wisc.edu/people/schneider/research/data_readme.html"
############################################################################################
GMT.URL      <- "http://oceancolor.gsfc.nasa.gov/DOCS/DistFromCoast/GMT_intermediate_coast_distance_01d.zip"
ISA.URL      <- "http://www.ngdc.noaa.gov/dmsp/data/web_data/isa/ngdc_isa_gcs_product.tgz"
NAVO.URL     <- "https://www.ghrsst.org/files/download.php?m=documents&f=NAVO-lsmask-world8-var.dist5.5.nc.bz2"
NIGHT.URL    <- "http://www.ngdc.noaa.gov/dmsp/data/radcal/F16_2006_radiance.tgz"
AIRPORTS.URL <- "http://www.ourairports.com/data/airports.csv"
RAINFED.URL  <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/CULTRF_2000.asc"
IRRIGATED.URL  <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/CULTIR_2000.asc"
CULTIVATED.URL <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/CULT_2000.asc"
FOREST.URL   <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/FOR_2000.asc"
GRASS.URL    <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/GRS_2000.asc"
SPARSE.URL   <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/NVG_2000.asc"
URBAN.URL    <- "http://www.iiasa.ac.at/Research/LUC/External-World-soil-database/Landcover/URB_2000.asc"
WMO.URL      <- "ftp://ftp.wmo.ch/wmo-ddbs/VolA_New/"
BLUEWATER.URL <- "http://atlas.gwsp.org/atlas/data/bluewater1_0.zip"
###########################################################################################
# DIRECTORIES
#
#
#
##########################################################################################

GMT_DIR      <- "GMT"
GPW_DIR      <- "GPW"
GRMPURB_DIR  <- "GrumpUrban"
HYDE_DIR     <- "Hyde"
ISA_DIR      <- "ISA"
LND_DIR      <- "Landcover"
MODIS_DIR    <- "Modis"
NAVO_DIR     <- "NAVO"
NIGHT_DIR    <- "Nightlights"
AIRPORTS_DIR <- "Airports"
LULC_DIR     <- "LULC"
BLUEWTR_DIR  <- "Bluewater"

NAVO.BZ.FILE    <- "lsmask-world8-var.dist5.5.nc.bz2"
NAVO.FILE       <- "lsmask-world8-var.dist5.5.nc" 
GMT.FILE        <- "GMT_intermediate_coast_distance_01d.tif"
GRUMP.FILE      <- "glurextents.bil"
MODIS.FILE      <- "2002v5_igbp1_geog_mos.bip"
GPW.FILE        <- "glds00ag.bil"
ISA.FILE        <- "ngdc_isa_gcs_product.dat"
LIGHTS.FILE     <- "F16_20051128_20061224.cloud2.light1.marginal0.fg_15_35_55.full_swath.line_screened.shiftx2y2.op_blended.avg_vis.tif"
AIRPORT.FILE    <- "airports.csv"
IRRIGATED.FILE  <- "CULTIR_2000.asc"
URBAN.LAND.FILE <- "URB_2000.asc"
CULTIVATED.FILE <- "CULT_2000.asc"
RAINFED.FILE    <- "CULTRF_2000.asc"
FOREST.FILE     <- "FOR_2000.asc"
GRASSLAND.FILE  <- "GRS_2000.asc"
NVG.FILE        <- "NVG_2000.asc"
BLUEWATER.FILE  <- "blue_lpjml.shp"
 

##############################################################
# Raster file names. for files that have been fixed
# or collected into multi band files
##############################################################
 
 
MODIS.RASTER        <- "modis.grd" 
HYDE.RASTER         <- "Hyde.grd"
HYDE.RURAL.RASTER   <- "HydeRural.grd"
HYDE.URBAN.RASTER   <- "HydeUrban.grd"
#HYDE.LULC.RASTER   <- "HydeLulc.grd"
ISA.RASTER          <- "isa.grd"  
LANDUSE.RASTER      <- "landuse.grd"
AIRPORT.RASTER      <- "airports.grd"  
MODIS.BINARY.RASTER <- "modisBinary.grd"
BLUEWATER.RASTER    <- "bluewater.grd"

################################################
# Cover type definitions
#
###############################################

COVER.TYPE <- c("Broadleaf Evergreen Forest",
              "Broadleaf Deciduous Forest",
               "Needleleaf Evergreen Forest",
               "Needleleaf Deciduous Forest",
               "Mixed Forest",
               "Tree Open",
               "Shrub",
               "Herbaceous",
               "Herbaceous with Sparse Tree/Shrub",
               "Sparse vegetation",
               "Cropland",
               "Paddy field",
               "Cropland Other Vegetation Mosaic",
               "Mangrove",
               "Wetland",
               "Bare area,consolidated(gravel,rock)",
               "Bare area,unconsolidated (sand)",
               "Urban",
               "Snow Ice",
               "Water bodies",NA)

MODIS.COVER.TYPE <- c("Water Bodies",
                "Evergreen Needleleaf Forest",
              "Evergreen Broadleaf Forest",
               "Deciduous Needleleaf Forest",
               "Deciduous Broadleaf Forest",
               "Mixed Forest",
               "Closed Shrublands",
               "Open Shrublands",
               "Woody Savannas",
               "Savannas",
               "Grasslands",
               "Permanent Wetlands",
               "Croplands",
               "Urban Areas",
               "Cropland - Natural Vegetation Mosaic",
               "Snow and Ice",
               "Barren or Sparsely Vegetated",NA)
 
 