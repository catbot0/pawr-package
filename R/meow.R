# Meow!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Meow!")
}


superhello <- function(kitties = 7){
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


donotdisturb <- function(){

  choice <- menu(c("Nah, I'm fine.", "Yes!"),
                 title="Are u sure u wanna disturb the kittens?")

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


