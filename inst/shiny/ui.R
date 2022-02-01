# Define UI for miles per gallon app ----
ui <- fluidPage(

  # Grumpy cat for aesthetics
  tags$div(img(src = "https://www.trbimg.com/img-5a68a878/turbine/ct-grumpy-cat-lawsuit-20180124-001",
               width = 700)),

  # Show another cat
  br(),
  actionButton("go", "ShOW aNotHEr caT! Noowwwww!!!!"),
  uiOutput("image1", click = "MyImage"),
  br(), br(), br(),

  # Meowish Translator
  textInput("humanish", "HUMANISH-MEOWISH TRANSLATOR", "Hello, my name is Catty McCatster!"),
  verbatimTextOutput("value")

)
