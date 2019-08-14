#download prcl.mdb and load tables into lists prefixed with prcl.
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prcl.zip", "prcl.zip")
unzip("prcl.zip")
prcl_db <- mdb.get('prcl.mdb')
list2env(setNames(prcl_db, paste0("prcl.", names(prcl_db))), .GlobalEnv)
remove(prcl_db)
file.remove(c("prcl.mdb","prcl.zip"))

#download bldginsp.mdb and load tables into lists prefixed with bldginsp.
download.file("https://www.stlouis-mo.gov/data/upload/data-files/bldginsp.zip", "bldginsp.zip")
unzip("bldginsp.zip")
bldginsp_db <- mdb.get('bldginsp.mdb')
list2env(setNames(bldginsp_db, paste0("bldginsp.", names(bldginsp_db))), .GlobalEnv)
remove(bldginsp_db)
file.remove(c("bldginsp.mdb","bldginsp.zip"))

#download prmbdo.mdb and load tables into lists prefixed with prmbdo.
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prmbdo.zip", "prmbdo.zip")
unzip("prmbdo.zip")
prmbdo_db <- mdb.get('prmbdo.mdb')
prmcode_db <- mdb.get('prmcode.mdb')
list2env(setNames(prmbdo_db, paste0("prmbdo.", names(prmbdo_db))), .GlobalEnv)
list2env(setNames(prmcode_db, paste0("prmcode.", names(prmcode_db))), .GlobalEnv)
remove(prmbdo_db)
remove(prmcode_db)
file.remove(c("prmbdo.mdb","prmbdo.zip", 'prmcode.mdb'))

#download prmemp.mdb and load tables into lists prefixed with prmemp.
download.file("https://www.stlouis-mo.gov/data/upload/data-files/prmemp.zip", "prmemp.zip")
unzip("prmemp.zip")
prmemp_db <- mdb.get('prmemp.mdb')
prmcode2_db <- mdb.get('prmcode.mdb')
list2env(setNames(prmemp_db, paste0("prmemp.", names(prmemp_db))), .GlobalEnv)
list2env(setNames(prmcode2_db, paste0("prmcode2.", names(prmcode2_db))), .GlobalEnv)
remove(prmemp_db)
remove(prmcode2_db)
file.remove(c("prmemp.mdb","prmemp.zip", 'prmcode.mdb'))
