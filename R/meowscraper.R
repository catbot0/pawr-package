#' Random cat image URL
#'
#' Returns the URL of a randomly selected cat image from Wikimedia.org
#'
#' @usage randomCat()
#'
#' @param NA None yet
#'
#' @examples randomCat()
#'
#' @export

randomCat <- function(){
  page <- rvest::read_html(
    "https://commons.wikimedia.org/w/index.php?search=cat&title=Special:MediaSearch&go=Go&type=image"
  )
  node <- rvest::html_nodes(
    page,xpath = '//img'
    )

  range <- 1:length(node)

  index <- sample(range, 1)

  attr <- node[index][1]

  string <- as.character(attr)

  start <- ".*src=\\\""

  stop <- "\" data-src.*"

  link = gsub(start, "", gsub(stop, "", string))

  return(link)

}


