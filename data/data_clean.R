# Data Cleaning

library(dplyr)    # Methods for Efficient Data Processing
library(magrittr) # Pipe Syntax See ?`%>%` and ?`%<>%`
source('data/handle_standard.R')

load('data/data.rda')

# Pull Data.frames from List Elements and Assign to Objects

# Inspections
vacbldg  <- bldginsp[[7]]
ltrowner <- bldginsp[[6]]
condemn  <- bldginsp[[3]]
bldginsp <- bldginsp[[1]]

# Permits
prm_elec  <- prmemp[[1]]
prm_mech  <- prmemp[[3]]
prm_plumb <- prmemp[[4]]

prm_bldg <- prmbdo[[2]]
prm_demo <- prmbdo[[3]]
prm_occ  <- prmbdo[[4]]

# Other Parcel Data
bldgcom <- prcl[[1]]
bldgres <- prcl[[2]]
bldgsect <- prcl[[4]]
prclasmt <- prcl[[10]]
prclrear <- prcl[[14]]
prcl <- prcl[[7]]

# Add Handle for datasets that don't contain it


# Select columns we want to use


# Join all datasets based on Handle


# Save data
save(cleaned, 'data/cleaned.rda')