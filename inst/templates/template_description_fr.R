# --------------------------------------------------- #
# Description de la base + Figures descriptives       #
# Créé le {{format(Sys.Date(), "%d/%m/%Y")}}, modifié le {{format(Sys.Date(), "%d/%m/%Y")}} #
# --------------------------------------------------- #


# I/ Packages et helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_datavar)

theme_set(theme_light(base_size = 16))


# II/ Charger les bases ----

load("Data/base_v1.RData")
{{PROJECT_ENV$nom_datavar}} <- read.csv2("Data/datavar.csv")


# III/ Description ----

# Terrain
TabTer <- bind_cols(Description({{PROJECT_ENV$nom_base}}, .Datavar = {{PROJECT_ENV$nom_datavar}},
                                .Listevar = names({{PROJECT_ENV$nom_base}})[grepl("^ter_", names({{PROJECT_ENV$nom_base}}))],
                                Langue = "fr"),
                    Description({{PROJECT_ENV$nom_base}}, .Datavar = {{PROJECT_ENV$nom_datavar}}, y = groupe,
                                .Listevar = names({{PROJECT_ENV$nom_base}})[grepl("^ter_", names({{PROJECT_ENV$nom_base}}))],
                                Langue = "fr")[, -c(1, 2)])


# IV/ Sauvegarde des résultats ----

save(TabTer,
     file = "Data/description.RData")
