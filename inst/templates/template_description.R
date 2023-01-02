# --------------------------------------------------- #
# Description of the database and descriptive figures #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}}      #
# --------------------------------------------------- #


# I/ Packages and helpers ----

library(tidyverse)
library(Datavar)

theme_set(theme_light())


# II/ Loading bases ----

load("Data/nom_base.RData")
DatavarNom_base <- read.csv2("Data/datavar.csv")


# III/ Description ----


# IV/ Save results ----


