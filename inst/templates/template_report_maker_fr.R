# ----------------------------------------------- #
# Génération du rapport                           #
# Créé le {{format(Sys.Date(), "%d/%m/%Y")}}, modifié le {{format(Sys.Date(), "%d/%m/%Y")}}#
# ----------------------------------------------- #

Racine <- rstudioapi::getActiveProject()
rmarkdown::render(input = paste0(Racine, "/Scripts/05 - Rapport.Rmd"),
                  encoding = "UTF-8",
                  output_file = paste0(Racine, "/Rapports/rapport_", format(Sys.Date(), "%Y%m%d")))
rm(Racine)
