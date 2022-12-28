

#' Title
#'
#' @return
#' @export
#'
#' @examples
PrepareProject <- function(
    ClearEnv = TRUE
  ) {

  # If the user didn't define the PROJECT_ENV use the default settings
  if (!(rlang::env_has(rlang::global_env(), "PROJECT_ENV") && rlang::is_environment(PROJECT_ENV)))
    SetupProject()
  # Clear the global environment if asked
  if (ClearEnv)
    on.exit(rm(PROJECT_ENV), add = TRUE)

  return("lol")

}
