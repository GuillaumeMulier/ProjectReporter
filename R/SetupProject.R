
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
#' @param Acronyme The acronym of the study.
#' @param TitreProjet The title of the report and project.
#' @param Langue The language of the files.
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
    Cliniciens = NULL,
    Acronyme = "Analyse",
    TitreProjet = "Analysis report",
    Langue = c("fr", "eng"),
    NomBase = nom_base,
    NomDatavar = datavar_base
) {

  Langue <- match.arg(Langue)

  # Create rlang environment and evaluate it in the global environment as a side effect
  Set_Up <- rlang::new_environment(
      list(
        auteur = Auteur,
        chefs = Chefs,
        cliniciens = Cliniciens,
        titre = TitreProjet,
        acronyme = Acronyme,
        language = Langue,
        nom_base = NomBase,
        nom_datavar = NomDatavar
      ),
      parent = globalenv()
    )
  assign("PROJECT_ENV", Set_Up, envir = rlang::global_env())

  # The function is called for its side effects so no need to return an actual value
  invisible(NULL)

}
