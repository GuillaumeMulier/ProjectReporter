# --------------------------------------------------- #
# Description of the database and descriptive figures #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}}      #
# --------------------------------------------------- #


# I/ Packages and helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_datavar)

theme_set(theme_light(base_size = 16))


# II/ Loading bases ----

load("Data/base_v1.RData")
{{PROJECT_ENV$nom_datavar}} <- read.csv2("Data/datavar.csv")


# III/ Description ----

# Terrain
TabTer <- bind_cols(Description({{PROJECT_ENV$nom_base}}, .Datavar = {{PROJECT_ENV$nom_datavar}},
                                .Listevar = names({{PROJECT_ENV$nom_base}})[grepl("^ter_", names({{PROJECT_ENV$nom_base}}))],
                                Langue = "eng"),
                    Description({{PROJECT_ENV$nom_base}}, .Datavar = {{PROJECT_ENV$nom_datavar}}, y = groupe,
                                .Listevar = names({{PROJECT_ENV$nom_base}})[grepl("^ter_", names({{PROJECT_ENV$nom_base}}))],
                                Langue = "eng")[, -c(1, 2)])


# IV/ Save results ----

save(TabTer,
     file = "Data/description.RData")
