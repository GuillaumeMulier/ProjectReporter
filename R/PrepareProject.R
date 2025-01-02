
#' @title
#' Create the project
#'
#' @description
#' Create the project and open it in a new R session. `TemplateProjet` in the package is formatted
#' with respect to the package `starter`.
#'
#' @param Chemin The path where to create the package.
#' @param Template The template to use for function `starter::create_project()`.
#' @param ClearEnv Boolean, TRUE if you want to clear the environment variables PROJECT_ENV (via [SetupProject()]).
#'
#' @return
#' @export
#'
#' @examples
PrepareProject <- function(
    Chemin,
    Template = if (PROJECT_ENV$language == "eng") TemplateProjetEng else TemplateProjetFr,
    ClearEnv = TRUE
  ) {

  # If the user didn't define the PROJECT_ENV use the default settings
  if (!(rlang::env_has(rlang::global_env(), "PROJECT_ENV") && rlang::is_environment(PROJECT_ENV)))
    SetupProject()

  starter::create_project(
    path = Chemin,
    template = Template,
    renv = FALSE,
    open = TRUE
  )

  # Clear the global environment if asked
  if (ClearEnv)
    on.exit(rm(PROJECT_ENV, envir = rlang::global_env()), add = TRUE)

  invisible(NULL)

}

