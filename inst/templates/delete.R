fs::dir_create(path = c(fs::path(path, "Figures"),
                        fs::path(path, "Data"),
                        fs::path(path, "Archives"),
                        fs::path(path, "Reports")))

usethis::ui_done("Writing subfolders")
