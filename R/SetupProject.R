
#' @title
#' Set-up variables for the project
#'
#' @description
#' `SetupProject` is a function called to create an environment containing the metadata used by
#' the function [PrepareProject()] in order to customize fully the different files.
#'
#' @param Auteur You, the author.
#' @param Chefs Yours chiefs or statistician collegues that work with you on the project.
#' @param Cliniciens The clinicians who came with the project.
#'
#' @return NULL
#' @export
#'
#' @importFrom rlang !!!
#'
#' @examples
#' SetupProject(Auteur = "Guillaume Mulier")
SetupProject <- function(
    Auteur = "Guillaume Mulier",
    Chefs = NULL,
    Cliniciens = NULL
) {

  # Create rlang environment and evaluate it in the global environment as a side effect
  Set_Up <- rlang::new_environment(
      list(
        auteur = Auteur,
        chefs = Chefs,
        cliniciens = Cliniciens
      ),
      parent = globalenv()
    )
  assign("PROJECT_ENV", Set_Up, envir = rlang::global_env())

  # The function is called for its side effects so no need to return an actual value
  invisible(NULL)

}
