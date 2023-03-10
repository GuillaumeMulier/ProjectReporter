
TemplateProjet <- list(
  readme = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_readme.md", package = "ProjectReporter"),
    filename = "ReadMe.md",
    glue = TRUE
  )),
  rproj = rlang::expr(list(
    template_filename = fs::path_package("project_templates/default_rproj.Rproj", package = "starter"),
    filename = paste0(folder_name, ".Rproj"),
    glue = FALSE
  )),
  gitignore = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_gitignore.txt", package = "ProjectReporter"),
    filename = ".gitignore",
    glue = TRUE
  )),
  rprofile = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_rprofile.R", package = "ProjectReporter"),
    filename = ".Rprofile",
    glue = TRUE
  )),
  import = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_import.R", package = "ProjectReporter"),
    filename = "Scripts/01 - Import.R",
    glue = TRUE
  )),
  verif = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_verifications.R", package = "ProjectReporter"),
    filename = "Scripts/02 - Verifications.R",
    glue = TRUE
  )),
  description = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_description.R", package = "ProjectReporter"),
    filename = "Scripts/03 - Description.R",
    glue = TRUE
  )),
  analyse = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_analysis.R", package = "ProjectReporter"),
    filename = "Scripts/04 - Analysis.R",
    glue = TRUE
  )),
  rapport = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_report.Rmd", package = "ProjectReporter"),
    filename = "Scripts/05 - Report.Rmd",
    glue = TRUE
  )),
  gen_rapport = rlang::expr(list(
    template_filename = fs::path_package("inst/templates/template_report_maker.R", package = "ProjectReporter"),
    filename = "Scripts/05bis - Report.R",
    glue = TRUE
  ))
)
attr(TemplateProjet, "script_path") <-
  rlang::expr(fs::path_package("inst/templates/delete.R", package = "ProjectReporter"))
