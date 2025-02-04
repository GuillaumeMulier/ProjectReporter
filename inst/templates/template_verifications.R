# ---------------------------------------------- #
# Verifications for datamanagement               #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modified the {{format(Sys.Date(), "%d/%m/%Y")}}#
# ---------------------------------------------- #

library(tidyverse)

load("Data/base_v1.RData")
load("Data/check.RData")

# Check if no introduction of new undesired NA
map(names({{PROJECT_ENV$nom_base}}Check), \(col) {
  if (any(is.na({{PROJECT_ENV$nom_base}}[[col]]) != is.na({{PROJECT_ENV$nom_base}}Check[[col]]))) {
    Incoh <- is.na({{PROJECT_ENV$nom_base}}[[col]]) != is.na({{PROJECT_ENV$nom_base}}Check[[col]])
    VecIncoh <- paste({{PROJECT_ENV$nom_base}}$id_pat[Incoh], " : ", {{PROJECT_ENV$nom_base}}Check[[col]][Incoh], "->", {{PROJECT_ENV$nom_base}}[[col]][Incoh], sep = "", collapse = " / ")
  } else {
    VecIncoh <- ""
  }
  return(paste0(col, " ==> ", VecIncoh))
})

