# Data Download

library(Hmisc) # Provides Function to Read Access Files; Requires MDB Tools on Linux/MacOS
library(sf)    # Spatial Class and Methods


# Download All Files to A Temp Directory
tmp <- tempdir()
download.file('https://www.stlouis-mo.gov/data/upload/data-files/prcl.zip', file.path(tmp, 'prcl.zip'))
download.file('https://www.stlouis-mo.gov/data/upload/data-files/bldginsp.zip', file.path(tmp, 'bldginsp.zip'))
download.file('https://www.stlouis-mo.gov/data/upload/data-files/prmbdo.zip', file.path(tmp, 'prmbdo.zip'))
download.file('https://www.stlouis-mo.gov/data/upload/data-files/prmemp.zip', file.path(tmp, 'premp.zip'))

download.file('https://www.stlvacancy.com/uploads/8/7/1/3/87139164/finalvacantall_20180707.csv', file.path(tmp, 'vacancy.csv'))

download.file('https://www.stlouis-mo.gov/data/upload/data-files/prcl_shape.zip', file.path(tmp, 'prcl_shape.zip'))

# Unzip Downloaded Files
for(i in list.files(tmp, '.zip')){
  unzip(file.path(tmp, i), exdir = tmp)
}

# Load Files into R Structures
bldginsp <- mdb.get(file.path(tmp, 'bldginsp.mdb'))
prcl     <- mdb.get(file.path(tmp, 'prcl.mdb'))
prmbdo   <- mdb.get(file.path(tmp, 'prmbdo'))
prmcode  <- mdb.get(file.path(tmp, 'prmcode'))
prmemp   <- mdb.get(file.path(tmp, 'prmemp'))
  
parcels <- st_read(file.path(tmp, 'prcl.shp'))

vacancy <- read.csv(file.path(tmp, 'vacancy.csv'), stringsAsFactors = FALSE)
