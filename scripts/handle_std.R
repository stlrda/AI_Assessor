## Script for Standardizing Parcel IDs (9-11) to Handle

# string -The string you want to change
# from   -Either parcel9 or parcel11

# Returns a handle 
std_handle <- function(string, from){

  if(from == "parcel9"){
    
    block    <- substr(string, 1, 4)
    subBlock <- substr(string, 5, 6)
    parcel   <- substr(string, 7, 9)
    handle <- paste0(block, subBlock, 0, parcel)
    return(handle)
    
  }else if(from == "parcel11"){

    handle <- substr(string, 1, 9)
    return(handle)
    
  }else{
    stop("from must be either 'parcel9' or 'parcel11'")
  }
  
}

# Arguments with 0s are Not Required
make_handle <- function(block, parcel, subBlock = 0, condoCode = 0, remove_dot = FALSE){
  # need to force lengths
  block    <- sprintf("%05s", block) # includes block and sub block
  parcel   <- sprintf("%03s", parcel)
  
  handle <- paste0(block, subBlock, condoCode, parcel)
  
  if(remove_dot){
    handle <- gsub("\\.", "", handle)
  }
  
  return(handle)
}
