## Script for Standardizing Parcel IDs (9-11) to Handle

# (B)lock, sub (b)lock, (c)ondo, (p)arcel, (o)wner

# Parcel9  | BBBB.bb ppp
# Parcel11 | BBBB.bbcpppo
# Handle   | BBBB.bbcppp


# string -The string you want to change
# from   -Either parcel9 or parcel11

# Returns a handle 
std_handle <- function(string, from, condoCode = 0){

  if(from == "parcel9"){
    
    block    <- substr(string, 1, 4)
    subBlock <- substr(string, 5, 6)
    parcel   <- substr(string, 7, 9)
    handle <- paste0(block, subBlock, condoCode, parcel)
    return(handle)
    
  }else if(from == "parcel11"){

    handle <- substr(string, 1, 10)
    return(handle)
    
  }else{
    stop("from must be either 'parcel9' or 'parcel11'")
  }
  
}

# Arguments with 0s are Not Required
make_handle <- function(block, parcel, condoCode = 0){
  # need to force lengths
  block <- gsub("\\.", "", block)
  
  block    <- sprintf("%06s", block) # includes block and sub block ####.##
  parcel   <- sprintf("%03s", parcel)
  
  handle <- paste0(block, condoCode, parcel)
  
  return(handle)
}
