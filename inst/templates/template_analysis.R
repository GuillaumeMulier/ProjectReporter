# ------------------------------------------------ #
# Analysis of the database and figures for results #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}}    #
# ------------------------------------------------ #


# I/ Packages and helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_datavar)

theme_set(theme_light(base_size = 16))


# II/ Loading bases ----

# A/ Loading ----

load("Data/base_v1.RData")
{{PROJECT_ENV$nom_datavar}} <- read.csv2("Data/datavar.csv")

# B/ Modification of the database ----

{{PROJECT_ENV$nom_base}} <- {{PROJECT_ENV$nom_base}} %>%
  mutate()


# III/ Analysis ----


# IV/ Save results ----

save({{PROJECT_ENV$nom_base}},
     file = "Data/analyse.RData")
