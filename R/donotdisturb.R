#' Centered Headline 0 for LaTeX
#'
#' Gives centered comments for LaTeX. Always capitalized.
#'
#' @usage donotdisturb()
#'
#' @param willdonothing String for nothing
#'
#' @examples function(willdonothing = "makesnosense")
#'
#' @export
donotdisturb <- function(willdonothing = "makesnosense"){

  choice <- menu(c("Nah, I'm fine.", "Yes!"),
                 title="Are u sure u wanna disturb the catties?")

  if (choice == 1) {

    print("Good for you!!!!!")

  } else {

    cat("
|=========================================================|
|   ,---------------.                 /|/|                |
|  /                 \\              ,--' |                |
| /                   \\            /c c  |                |
| |    WTF, BRO?!?!   |          >(w:<   |                |
|  \\                 /             `---  \\                |
|   \\               /               /|    \\          ,-.  |
|    `-------------'                \\|  |  \\         | |  |
|                     ,     ,       //  ,   \\        | |  |
|                     |\\___/|      // ,'     \\       | |  |
|                     |O   O|     // / \\\\     \\      | |  |
|                     \\  w  /____((_/___\\\\     \\     | |  |
|                      `---'              \\     \\   / /   |
|   }'''''''''{''''''    |                 \\/    `-' /    |
|  { purr-purr }         ;\\   |        |   |    |`--'     |
|   }         {           \\\\  |--------`.   \\   | \\       |
|   '''''''''''            || |          \\  |\\  |  |      |
|                          || |          || | | || |      |
|                          || |          || |/ / | |      |
|                         ((_/          ((_/((/  ((|      |
|=========================================================|
      ")

  }

}

# test

