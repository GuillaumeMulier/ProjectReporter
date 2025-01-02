# ---------------------------------------------- #
# Import and datamanagement for the dataset(s)   #
# Author: G. Mulier                              #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}} #
# ---------------------------------------------- #

# Packages and helpers ----

library(tidyverse)
library(Datavar)
# devtools::load_all(path_to_Datavar)
library(lubridate)


# I/ Import bases ----

{{PROJECT_ENV$nom_base}} <- read.csv("Data/base.csv", stringsAsFactors = FALSE, na.strings = c("", " ", "NA"))

{{PROJECT_ENV$nom_datavar}} <- read.csv("Data/datavar.csv", fileEncoding = "latin1")

{{PROJECT_ENV$nom_base}} <- RenameDf({{PROJECT_ENV$nom_base}}, {{PROJECT_ENV$nom_datavar}})

if (FALSE) {
  cat("\014")
  walk(1:30, \(x) {
    print(names({{PROJECT_ENV$nom_base}})[x])
    print(class({{PROJECT_ENV$nom_base}}[[x]]))
    print(table({{PROJECT_ENV$nom_base}}[[x]], useNA = "a"))
    cat("-------------------------\n")
  })
}


# II/ Correct mistakes ----



# III/ Recompute variables and dates ----

{{PROJECT_ENV$nom_base}} <- {{PROJECT_ENV$nom_base}} %>%
  mutate()


# IV/ Create new variables ----

{{PROJECT_ENV$nom_base}} <- {{PROJECT_ENV$nom_base}} %>%
  mutate()






# V/ Saving bases ----

if (FALSE) { # Never execute when source
  {{PROJECT_ENV$nom_datavar}} <- CreateDatavar({{PROJECT_ENV$nom_base}}, Options = DefaultOptions())
  write.csv({{PROJECT_ENV$nom_datavar}}, file = "Data/datavar.csv", row.names = FALSE)
}

save({{PROJECT_ENV$nom_base}}, file = "Data/base_v1.RData")



