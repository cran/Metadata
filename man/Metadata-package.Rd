\name{Metadata-package}
\alias{Metadata-package}
\alias{Metadata}
\docType{package}
\title{Metadata
 collates a collection of metadata for climate stations
 
}
\description{The package collects, downloads and reformats a
  collection of open datasets that describe the physical
  chracteristics of climate stations. Various GIS datasets
  are downloaded for the user, including distance from
  coast, distance from airports, land cover, population,
  nightlights, ISA, land use among others. In certain
  cases datasets are combined and reclassed. Finally,
  there is a utility function for creating an inventory
  of metadata from a dataframe of locations. See the
  instructions below for specific files that must be downloaded
  manually
 
}
\details{
\tabular{ll}{
Package: \tab Metadata\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-09-04\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab FALSE\cr
}
 
}

\section{Introduction}{ 

  This package is intended to make the task of creating or improving
  metadata for climate stations relatively easy. It is built generically,
  however, so that any set of locations can have metadata created for them.
  For the most part all of the data here can be downloaded without 
  registration. However, some data is only accessible via registration
  or writing to the Principle Investigator. In all cases the data is
  open and usable free of charge and most of the registration is painless.
  The data that is collected includes the following
  
  \tabular{ll}{ 
    \code{distance from coast data ( 2 sources)}\cr 
    \code{Population density}\cr
    \code{historical population}\cr
    \code{landcover ( 2 sources)}\cr
    \code{land use (6 types)}\cr
    \code{Impermeable surfaces}\cr
    \code{radiance calibrated night lights}\cr
    \code{Measures of urban extent}\cr
    \code{Blue water irrigation}\cr
     
    }
    
    This data is first downloaded to directories and then
    processed where necessary. Finally, a dataframe of locations
    can then be  assigned values from these datasets.
    Those steps and the datasets are described in more detail below.
    Details about the manual downloads are found below and in
    the manual pages for the Urls.


}

\section{Downloads}{ 
  The first step in processing the data consists of running
  the function \code{downloads}. After installing this package
  the user should create a working directory and then execute
  the function \code{createDirectories}. That function creates
  the ncessary subdirectories within your work enviroment.
  Next execute the command \code{downloads}. From there all
  of the open datasets will be fetched and unpacked. This
  can take a considerable amount of time. The download process
  requires the RCurl package for https files and requires
  certain functions from R.utils for unpacking. All of the file
  names and directory names and Urls are predefined.
  The following urls are accessed in the process.
  
  \tabular{ll}{ 
    \code{ GMT.URL } \cr 
    \code{ISA.URL }\cr
    \code{ NAVO.URL}\cr
    \code{NIGHT.URL }\cr
    \code{AIRPORTS.URL }\cr
    \code{RAINFED.URL }\cr
    \code{ IRRIGATED.URL}\cr
    \code{ CULTIVATED.URL}\cr
    \code{FOREST.URL }\cr
    \code{GRASS.URL }\cr
    \code{SPARSE.URL }\cr
    \code{ URBAN.URL}\cr
    \code{WMO.URL }\cr
    \code{ BLUEWATER.URL}\cr
   }
   It is advised to take some time to aquaint yourself with these web
   pages and ftp sites. The physical address is given in the manual
   pages of the variables listed above. The \code{downloads} function
   will automatically download the correct files from these locations
   and deposit them in the proper directory. Don't change directory names
   and expect the package to work. Some files are quite large so the process
   is not fast even on a fast connection.
  


}

\section{Manual Downloads}{ 
  Every attempt was made to have a fully automated download function.
  However, some assets are behind registration walls. And MODIS data
  requires  correspondence with the PI. Thus to get the full value of
  the package several files must be downloaded "manually". These files
  should be downloaded and placed in the proper directory and decompressed.
  All files should be left in place as the code expects them to be there.
  Missing files will generate warnings and the process will continue.
  The following variables are pointers to the urls where data must
  be downloaded by hand.
  
   \tabular{ll}{ 
    \code{ GPW.URL }\cr 
    \code{GRMPURB.URL }\cr
    \code{ HYDE.URL}\cr
    \code{LND.URL }\cr
    \code{MODIS.URL}\cr
     
   }
   GPW.URL and GRMPURB.URL  are the same location. From that location
   this package expects you to download two different files. The GPW
   population data and the GRUMP urban extent data.  
   GPW or Gridded Population of the world is produced by the Center 
   for International earth Science Information Network (CIESIN) at Columbia
   University.  The data is freely available for download after registration 
   the following url.  \url{http://sedac.ciesin.columbia.edu/gpw/global.jsp}
     
    
   Using the menus presented on that page, download the GPW version 3  population
   density file. Download BIL format at 2.5 arc minutes. This package expects
   year 2000 data. the downloaded file should be moved to the GPW_DIR and
   unzipped. Leave all the files in place. Next download GRUMP urban extent data.
   Using the same menus select GRUMP data. The file you want is Urban extent.
   Select BIL format. This comes in a 30 arc second (1km) format. Download
   that file annd copy it to the GRMPURB_DIR. Unzip the file and leave the
   contents in place.
   
   
   The HYDE.URL location also requires registration to get access to
   the ftp. Proceed to the following url 
   \url{http://themasites.pbl.nl/en/themasites/hyde/download/registration/registrationform.html}
   Fill out the registration and you navigate to the following
   ftp: \url{ftp://ftp.mnp.nl/hyde/}. Select the hyde31_final folder
   \url{ftp://ftp.mnp.nl/hyde/hyde31_final/}. This folder conatins the
   files you must download. The files required are the population zip files.
   for example: \url{ftp://ftp.mnp.nl/hyde/hyde31_final/1950ad_pop.zip}. The
   code here will work with any number of these zip files and create a raster
   from all of them. So, one could download 1950-2000 zip files and the
   package will handle them accordingly. Copy these zip files to the HYDE_DIR.
   unzip them and leave all the files in place. This server is not entirely
   reliable if multiple requests are in flight so It may take several attempts
   to get the files to download properly.
   
   The next data that must be retrieved manually is the landcover data. A
   description is here: url{http://www.iscgm.org/GM_glcnmo.html}
   registration is here \url{http://www.iscgm.org/gmd/download/regist_form.html}
   After registration you will be given a login and password. Proceed to the
   download page for the global landcover dataset "GLCNMO". That page
   \url{http://www.iscgm.org/gmd/download/glcnmo.html} offers two formats,
   an BIL format and a TIFF format. Slect the TIFF format. You will have to
   download 72 tiles to your local machine. These should be stored in the
   LND_DIR and should be unzipped. Leave the files in their sub directories.
   With all 72 files in place the code will be able to look up the landcover
   for any lat/lon on the globe so all 72 files should be present.
   
   The last data required is the Modis data. Access
   is controlled by the Principle Investigator. An email is required to get access.
   Start by visiting this page 
   \url{http://www.sage.wisc.edu/people/schneider/research/data_readme.html}
   To access the data: 
   Send an email to aschneider4@wisc.edu. Please include: 
   a description of how you will use the data, and 
   your contact information. 
   If you like include a reference to this package.
   You will receive an email within 1-3 days with the password for data access. The
   code here will work without the MODIS data, but to replicate any studies that
   use this package you will have to get the data.

 
  

}

\section{Create rasters}{ 

  The process of creating useable metadata involves formating or
  reformating certain datasets. Some datasets can be used as is,
  for others some minor adjustments are helpul. When source data
  is changed or reformated or repackaged this package will create
  a new file. We use the native "raster" for to signify that
  work was done on the file. Those secondary data products are listed
  below

 \tabular{ll}{ 
    \code{ MODIS.RASTER }\cr 
    \code{HYDE.RASTER }\cr
    \code{ HYDE.RURAL.RASTER}\cr
    \code{HYDE.URBAN.RASTER }\cr
    \code{ISA.RASTER }\cr
    \code{LANDUSE.RASTER }\cr
    \code{ AIRPORT.RASTER}\cr
    \code{ MODIS.BINARY.RASTER}\cr
    \code{BLUEWATER.RASTER }\cr
    } 
  MODIS.RASTER and MODIS.BINARY.RASTER are the result of processing
  on the base Modis product. The modis file has 5 missing latitude
  cells, so its extent does not run to -90. Left as is the grid squares
  would be slighly larger than 15 arc seconds, so the extent is corrected.
  In addition, the dataset documenttation suggests a different reference
  system so that change is included as well. 
  \code{ projection(Modis) <-  "+proj=longlat +ellps=clrk66"}. In addition
  a "binary" version of this file is created where every urban cell is
  given a value of 1. Other cells are code to zero. Then the whole raster
  is aggregated to 30 arc seconds or 1km. 4 500m cells are thise averaged
  to give you a map that ranges from 0 to 1 in  .25 increments.
  The HYDE rasters are multi layer rasters or bricks. Every layer is a
  decade of population data or population density. The layer names
  indicate which variable is stored there. For the ISA raster a simple change
  is made to the value of ISA over water. In the source file this is -1.
  That makes it impossible to do an average over a selected area that has water
  in it. So for averages over areas ( 5km and 10km) An alternative raster
  is created that substitutes Zero for -1. The landuse raster merely combines
  all landuse files into one multiplayer raster. The Airport raster is a 1km
  raster created from airport locations. a value of 1 indicates a airport 
  is located in that cell. Otherwise, NA is reported. Finally, the BLUEWATER 
  raster is created from a shapefile. The source data is in polygons and this
  package turns that data into a raster.
  
        


}
\section{collate Metadata}{ 
  
   After the data is downloaded and unpackaged and after \code{createRasters}
   has run, the last step is to use the function \code{collateMetadata}. This 
   function accepts a dataframe of Lat/Lon  locations and then cycles through
   every metadata file to calculate the metadata assocaited with that location.
   Files that are missing are skipped. The result is a dataframe that contains
   metadata for every location. This function can take 8 hours to process all
   the files. The function is rather simple and merely collects a series
   of raster commands and operations that are required to collect the data
   from the source files. For some data we do more than retrieve a single
   datapoint per lat/lon. For example, we retrieve maximum values within
   5km for several of the datasets. That option cannot be turned off. Alternatively one
   can simply learn the raster package and write your own version of collate.
   
    


}
 
\author{ Steven Mosher
 

Maintainer:   <moshersteven@gmail.com>
 
}
\references{
 See the url definitions for the references for each dataset
}
 
\keyword{ package }
\keyword{spatial}
 
 
