#download prcl.mdb and load into prcl_db dataframe
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prcl.zip", "prcl.zip")
unzip("prcl.zip")
prcl_db <- mdb.get('prcl.mdb')
file.remove(c("prcl.mdb","prcl.zip"))

#download bldginsp.mdb and load into bldginsp_db dataframe
download.file("https://www.stlouis-mo.gov/data/upload/data-files/bldginsp.zip", "bldginsp.zip")
unzip("bldginsp.zip")
bldginsp_db <- mdb.get('bldginsp.mdb')
file.remove(c("bldginsp.mdb","bldginsp.zip"))

#download prmbdo.mdb and load into prmbdo_db dataframe
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prmbdo.zip", "prmbdo.zip")
unzip("prmbdo.zip")
prmbdo_db <- mdb.get('prmbdo.mdb')
file.remove(c("prmbdo.mdb","prmcode.mdb","prmbdo.zip"))

#download prmbdo.mdb and load into prmemp_db dataframe
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prmemp.zip", "prmemp.zip")
unzip("prmemp.zip")
prmemp_db <- mdb.get('prmemp.mdb')
prmcode_db <- mdb.get('prmcode.mdb')
file.remove(c("prmemp.mdb","prmcode.mdb","prmemp.zip"))

#download forestry-maintenance-properties.csv and load into forestry_maintenance_properties tibble
download.file("https://www.stlouis-mo.gov/data/upload/data-files/forestry-maintenance-properties.csv", "forestry-maintenance-properties.csv")
forestry_maintenance_properties <- read_csv('forestry-maintenance-properties.csv', col_names = TRUE)
file.remove("forestry-maintenance-properties.csv")