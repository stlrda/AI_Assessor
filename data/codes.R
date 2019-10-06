# Get Codes for Later Translation

tmp <- tempdir()
download.file('https://www.stlouis-mo.gov/data/upload/data-files/codes.zip', file.path(tmp, 'codes.zip'))
unzip(file.path(tmp, 'codes.zip'), exdir = file.path(tmp, 'codes'))


# unzip all files in codes dir
for (i in list.files(file.path(tmp, 'codes'), '.zip')) {
  unzip(file.path(tmp,'codes',i), exdir = file.path(tmp, 'codes'))
}

# read access files to name of file (w/o extension)
for (i in list.files(file.path(tmp, 'codes'), '.mdb')) {
  x <- strsplit(i, '\\.')[[1]][1] # Get Name before '.'
  assign(
    x,
    mdb.get(file.path(tmp, 'codes', i))
  )
}
