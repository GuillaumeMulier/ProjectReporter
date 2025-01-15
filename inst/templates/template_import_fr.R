# ---------------------------------------------- #
# Import et datamanagement de la base            #
# Auteur: G. Mulier                              #
# Créé le {{format(Sys.Date(), "%d/%m/%Y")}}, modifié le {{format(Sys.Date(), "%d/%m/%Y")}}      #
# ---------------------------------------------- #

# Packages et helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_Datavar)
library(lubridate)


# I/ Import des bases ----

{{PROJECT_ENV$nom_base}} <- read.csv("Data/base.csv", stringsAsFactors = FALSE, na.strings = c("", " ", "NA"))

{{PROJECT_ENV$nom_datavar}} <- read.csv("Data/datavar.csv", fileEncoding = "latin1")

{{PROJECT_ENV$nom_base}} <- RenameDf({{PROJECT_ENV$nom_base}}, {{PROJECT_ENV$nom_datavar}})

if (FALSE) {
  {{PROJECT_ENV$nom_base}}Check <- {{PROJECT_ENV$nom_base}}
  save({{PROJECT_ENV$nom_base}}Check, file = "Data/check.RData")
}

if (FALSE) {
  cat("\014")
  walk(1:30, \(x) {
    print(names({{PROJECT_ENV$nom_base}})[x])
    print(class({{PROJECT_ENV$nom_base}}[[x]]))
    print(table({{PROJECT_ENV$nom_base}}[[x]], useNA = "a"))
    cat("-------------------------\n")
  })
}


# II/ Correction des erreurs dans la base ----



# III/ Recalcul des variables et mise au format ----

{{PROJECT_ENV$nom_base}} <- {{PROJECT_ENV$nom_base}} %>%
  mutate()


# IV/ Creation de nouvelles variables ----

{{PROJECT_ENV$nom_base}} <- {{PROJECT_ENV$nom_base}} %>%
  mutate()






# V/ Sauvegarde des bases ----

if (FALSE) { # Ne jamais exécuter quand on fait source
  {{PROJECT_ENV$nom_datavar}} <- CreateDatavar({{PROJECT_ENV$nom_base}}, Options = DefaultOptions())
  write.csv({{PROJECT_ENV$nom_datavar}}, file = "Data/datavar.csv", row.names = FALSE)
}

save({{PROJECT_ENV$nom_base}}, file = "Data/base_v1.RData")



