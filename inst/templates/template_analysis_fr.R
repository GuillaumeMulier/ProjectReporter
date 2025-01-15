# ------------------------------------------------ #
# Analyse de la base et figures des résultats      #
# Créé le {{format(Sys.Date(), "%d/%m/%Y")}}, modifié le {{format(Sys.Date(), "%d/%m/%Y")}}#
# ------------------------------------------------ #


# I/ Packages et helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_datavar)

theme_set(theme_light(base_size = 16))


# II/ Chargement et modification de la base ----

# A/ Chargement de la base ----

load("Data/base_v1.RData")
{{PROJECT_ENV$nom_datavar}} <- read.csv2("Data/datavar.csv")

# B/ Modification de la base ----

{{PROJECT_ENV$nom_base}} <- {{PROJECT_ENV$nom_base}} %>%
  mutate()


# III/ Analyse ----


# IV/ Sauvagarde ----

save({{PROJECT_ENV$nom_base}},
     file = "Data/analyse.RData")
