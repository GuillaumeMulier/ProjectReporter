# ---------------------------------------------- #
# Import and datamanagement for the dataset(s)   #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}} #
# ---------------------------------------------- #

# Packages and helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_Datavar)
library(lubridate)


# I/ Import bases ----

nom_base <- read.csv2("path_to_base.csv", stringsAsFactors = FALSE, na.strings = c("", " ", "NA"))


# II/ Recompute variables and dates ----

nom_base <- nom_base %>%
  mutate()


# III/ Create new variables ----

nom_base <- nom_base %>%
  mutate()


# IV/ Correct mistakes ----




# V/ Saving bases ----

if (FALSE) { # Never execute when source
  Datavarnom_base <- create_datavar(nom_base, default_datavar = options_datavar())
  write.csv2(Datavarnom_base, file = "Data/datavar.csv", row.names = FALSE)
}

save(nom_base, file = "Data/nom_base.RData")



