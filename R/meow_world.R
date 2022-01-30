# Meow!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
#' Centered Headline 0 for LaTeX
#'
#' Gives centered comments for LaTeX. Always capitalized.
#'
#' @usage meow_world()
#'
#' @param willdonothing String for nothing
#'
#' @examples meow_world(willdonothing = "makesnosense")
#'
#' @export
meow_world <- function(kitties = 7){
  for (i in 1:kitties) {
    print("Meow!")
    cat("
      /\\_/\\
     ( o.o )
      > ^ <
     ")

    Sys.sleep(0.5)
  }
}

