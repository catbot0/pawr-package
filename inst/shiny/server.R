# Define server logic to plot various variables against mpg ----
server <- function(input, output) {

  # Show another cat
  randomVals <- eventReactive(input$go, {
    find_tinyCat()
  })

  output$image1<- renderUI({
    imgurl2 <- randomVals()

    div(id = "myImage",
        tags$img(src = imgurl2, height = 350)
    )
  })

  # Meowish Translator
  output$value <- renderText({

    humanish <- input$humanish

    # Meowish translator
    n <- (lengths(gregexpr("\\W+", humanish)) + 1) * 2
    moews <- c("me", "meow", "MEOW!!", ";-)", "mEoW", "meooow", "meee",
               "OWW!", "MeeeOwOw", rep(" ", 10), rep(",", 2), rep(".", 2))
    out <- paste(sample(moews, n, replace = T), collapse = "")
    out

  })

}
