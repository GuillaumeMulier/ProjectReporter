fs::dir_create(path = c(fs::path(path, "Figures"),
                        fs::path(path, "Data"),
                        fs::path(path, "Exchanges"),
                        fs::path(path, "Archives"),
                        fs::path(path, "Archives/Scripts"),
                        fs::path(path, "Archives/Reports"),
                        fs::path(path, "Reports")))

usethis::ui_done("Writing subfolders")
