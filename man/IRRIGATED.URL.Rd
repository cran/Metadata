\name{IRRIGATED.URL}
\alias{IRRIGATED.URL}
\docType{data}
\title{ URL for irrigated data file
 
}
\description{ url for irrigated data file
 
}
\usage{ IRRIGATED.URL }
\format{
  The format is:
 chr "http://www.iiasa.ac.at/Research/LUC/
 External-World-soil-database/Landcover/CULTIR_2000.asc"
}
\details{ Details below quoted from website:
 Six geographic datasets were used for the compilation of an 
 inventory of seven major land cover/land use categories at 5' resolution.
 The datasets used are:

  GLC2000 land cover database at 30 arc-sec 
  (http://www-gvm.jrc.it/glc2000), using regional and global legends;
 an IFPRI global land cover categorization providing 17 land cover 
 classes at 30 arc-sec. (IFPRI, 2002), based on a reinterpretation 
 of the Global Land Cover Characteristics Database (GLCC ver. 2.0), 
 EROS Data Centre (EDC, 2000);
 FAO's Global Forest Resources Assessment 2000 (FAO, 2001)
 at 30 arc-sec. resolution;
 digital Global Map of Irrigated Areas (GMIA) version 4.0 of
 (FAO/University of Frankfurt) at 5' by 5' latitude/longitude 
 resolution, providing by grid-cell the percentage land area 
 equipped with irrigation infrastructure;
 IUCN-WCMC protected areas inventory at 
 30-arc-seconds (http://www.unep-wcmc.org/wdpa/index.htm), 
 and a spatial population density inventory (30-arc seconds) 
 for year 2000 developed by FAO-SDRN, based on spatial data 
 of LANDSCAN 2003, with calibration to UN 2000 population figures.
 An iterative calculation procedure has been implemented to estimate
 land cover class weights, consistent with aggregate FAO land 
 statistics and spatial land cover patterns obtained from 
 (the above mentioned) remotely sensed data, allowing the quantification 
 of major land use/land cover shares in individual 5' by 5' 
 latitude/longitude grid cells. The estimated class weights define 
 for each land cover class the presence of respectively cultivated 
 land and forest. Starting values of class weights used in the 
 iterative procedure were obtained by cross-country regression 
 of statistical data of cultivated and forest land against land 
 cover class distributions obtained from GIS, aggregated to national 
 level. The percentage of urban/built-up land in a grid-cell was 
 estimated based on presence of respective land cover classes as 
 well as regression equations relating built-up land with number 
 of people and population density. Remaining areas were allocated to:

 grassland and other vegetated areas (excluding cultivated land and forest);
 barren or very sparsely vegetated areas, and
 water bodies
 according to indicated land cover classes. Barren or very sparsely 
 vegetated areas (class (ii) above) were delineated from (i) using 
 the  respective land cover information in GLC 2000 and a
 minimum bio-productivity threshold. 
The resulting seven land use land cover categories shares are:

 Rain-fed cultivated land;
 Irrigated cultivated land;
 Forest;
 Pastures and other vegetated land;
 Barren and very sparsely vegetated land;
 Water; and
 Urban land and land required for housing and infrastructure.
   
}
\source{
 \url{http://www.iiasa.ac.at/Research/LUC/
     External-World-soil-database/HTML/LandUseSharesDesc.html?sb=8}
}
\references{
 Fischer, G., F. Nachtergaele, S. Prieler, H.T. van Velthuizen, 
 L. Verelst, D. Wiberg, 2008. Global Agro-ecological Zones 
 Assessment for Agriculture (GAEZ 2008). IIASA, Laxenburg, 
 Austria and FAO, Rome, Italy.
}
\examples{
print(IRRIGATED.URL)
 
}
 
\keyword{urls}
