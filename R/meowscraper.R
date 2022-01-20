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

  packages <- c("remotes", "netstat", "reader")

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
  rD <- RSelenium::rsDriver(
    browser = "chrome",
    port = netstat::free_port())
  remDr <- rD[["client"]]

  #navigate to page
  remDr$navigate(
    "https://commons.wikimedia.org/w/index.php?search=cat&title=Special:MediaSearch&go=Go&type=image"
  )

  #specific to commons.wikimedia.org
  #in order to load additional images, it first requires to scroll down twice,
  #and then to click on "Load more"
  # for(action in c("scroll", "load more")){
  #   #scroll down 2 times, waiting for the page to load at each time
  #   for(i in 1:2){
  #     remDr$executeScript(paste("scroll(0,",i*10000,");"))
  #     Sys.sleep(3)
  #   }
  #
  #
  #   RSelenium::remoteDriverr$findElement(
  #     By.xpath("//button[sd-button__content()='Load more']")).click();
  #
  # }
  #
  #
  # pageBody <- RSelenium::remDr$findElement("css","body")


  # #get the page html
  # page <- remDr$getPageSource()[[1]]
  #
  # #parse it
  # node <- rvest::html_nodes(
  #   page,xpath = '//img'
  #   )
  #
  # range <- 1:length(node)
  #
  # index <- sample(range, 1)
  #
  # attr <- node[index][1]
  #
  # string <- as.character(attr)
  #
  # start <- ".*src=\\\""
  #
  # stop <- "\" data-src.*"
  #
  # link = gsub(start, "", gsub(stop, "", string))
  #
  # return(link)

  remDr$close()
  rD$server$stop()
  rm(rD)
  gc()

}


show_randomCat <- function() {
  pic <- magick::image_read(randomCat())
  print(pic)
}
