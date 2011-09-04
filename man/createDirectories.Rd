\name{createDirectories}
\alias{createDirectories}
 
\title{ creates the directories prior to download
 
}
\description{ a simple utility function to create all the sub directories
  required. Some of the datasets such as landcover have files that
  need to be in the same directory. A separate directory is created for
  each type of metadata. These directories must be present for the
  package to work.
 
}
\usage{createDirectories()
}
 
\details{ The following directories are created
  GMT_DIR,GPW_DIR,GRMPURB_DIR, HYDE_DIR,
   ISA_DIR,MODIS_DIR,LND_DIR,NAVO_DIR,
   NIGHT_DIR, AIRPORTS_DIR, LULC_DIR,  
   BLUEWTR_DIR 
      
  }
 
\value{ The side effect is the directories are created if they dont exist
 
}
 
\author{Steven Mosher
 
}
 

 
 
\keyword{ filetools }
 
