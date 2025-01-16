fs::dir_create(path = c(fs::path(path, "Figures"),
                        fs::path(path, "Data"),
                        fs::path(path, "Echanges"),
                        fs::path(path, "Archives"),
                        fs::path(path, "Archives/Scripts"),
                        fs::path(path, "Archives/Rapports"),
                        fs::path(path, "Rapports")))

usethis::ui_done("Ecritures des dossiers")
