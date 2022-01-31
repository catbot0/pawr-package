#' Shiny Cat
#'
#' Opens Shiny App for Cats
#'
#' @usage shiny_cat()
#'
#' @param NA None yet
#'
#' @examples shiny_cat()
#'
#' @export
shiny_cat <- function() {
  shiny::runApp(appDir = system.file('shiny', package='PawR'))
}
