# ------------------------------------------------ #
# Analysis of the database and figures for results #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}}    #
# ------------------------------------------------ #


# I/ Packages and helpers ----

library(tidyverse)
library(Datavar)

theme_set(theme_light())


# II/ Loading bases ----

# A/ Loading ----

load("Data/nom_base.RData")
DatavarNom_base <- read.csv2("Data/datavar.csv")

# B/ Modification of the database ----



# III/ Analysis ----


# IV/ Save results ----


