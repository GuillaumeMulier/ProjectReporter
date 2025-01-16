# ----------------------------------------------- #
# Generate the report                             #
# Created the {{format(Sys.Date(), "%d/%m/%Y")}}, modifed the {{format(Sys.Date(), "%d/%m/%Y")}}    #
# ----------------------------------------------- #

Racine <- rstudioapi::getActiveProject()
rmarkdown::render(input = paste0(Racine, "/Scripts/05 - Report.Rmd"),
                  encoding = "UTF-8",
                  output_file = paste0(Racine, "/Reports/rapport_", format(Sys.Date(), "%Y%m%d")))
rm(Racine)
