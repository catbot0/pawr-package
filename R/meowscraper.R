#' Random cat image URL
#'
#' Returns the URL of a randomly selected cat image from Wikimedia.org
#'
#' @usage show_randomCat()
#'
#' @param NA None yet
#'
#' @examples show_randomCat()
#'
#' @export
#'
#' Requires RSelenium, openssl

randomCat <- function(){

  attr = list()

  i = tentative = 1

  URL <- "https://commons.wikimedia.org/w/index.php?search=cat&title=Special:MediaSearch&go=Go&type=image"

  packages <- c("remotes", "netstat", "reader", "tuneR")

  ## Load or install&load all
  package.check <- lapply(
    packages,
    FUN = function(x) {
      if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE)
        library(x, character.only = TRUE)
      }
    }
  )

  remotes::install_github("ropensci/RSelenium#237")


  #start RSelenium

  eCaps <- list(chromeOptions = list(
    args = c('--headless', '--disable-gpu', '--window-size=1280,800')
  ))
  rD <- RSelenium::rsDriver(
    browser = "chrome",
    port = netstat::free_port(),
    verbose = F,
    extraCapabilities = eCaps)
  remDr <- rD[["client"]]


  #navigate to page
  remDr$navigate(
    URL
  )

  #specific to commons.wikimedia.org
  #in order to load additional images, it looks for the "Load more" button and then clicks on it
   while(tentative <= 10){

     # click on "Load more" button
       loadMoreButton <- remDr$findElement(
         using = "xpath", value = "//*[@id='sd-tab-image']/div[2]/div/div/button/span"
           )
       loadMoreButton$clickElement()
       Sys.sleep(3)

     tentative <- tentative + 1
   }


   pageBody <- remDr$findElement("css","body")


   #get the page html
   page <- rvest::read_html(URL)

   #parse it
   images <- remDr$findElements(
     using = "css selector", value = "img"
   )

   src <- lapply(images,
                 function(x)
                   x$getElementAttribute("src"))

   range <- 1:length(src)


   while(length(attr) == 0){

     index <- sample(range, 1)

     attr <- src[[index]]
   }

   string <- as.character(attr)

   start <- ".*src=\\\""

   stop <- "\" data-src.*"

   link = gsub(start, "", gsub(stop, "", string))

   return(link)

  remDr$close()
  rD$server$stop()
  rm(rD)
  gc()

}

play_catSound <- function(){
  file <- tuneR::readMP3("sources/cat_purr.mp3")
  tuneR::play(file)
}


show_randomCat <- function() {
  pic <- magick::image_read(randomCat())
  print(pic)
  play_catSound()
}
