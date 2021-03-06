#' Random cat find image URL (faster)
#'
#' Returns URL of a randomly selected cat image from Wikimedia.org
#'
#' @usage find_tinyCat()
#'
#' @param NA None yet
#'
#' @importFrom rvest read_html html_nodes
#'
#' @examples find_tinyCat()
#'
#' @export
find_tinyCat <- function() {
  # Read CC cat images from photos for class (max 26 pages)
  pg <- rvest::read_html(paste0("https://www.photosforclass.com/search/cat/",
                                sample(1:26, 1)))
  pg <- rvest::html_nodes(pg, xpath = "//img")
  img <- pg[sample(2:length(pg), 1)]
  img <- gsub('^[^"]*"\\s*|"[^"]*$',"", img)
  img
}

#' Random cat image URL (faster)
#'
#' Returns the URL of a randomly selected cat image from Wikimedia.org
#'
#' @usage show_tinyCat()
#'
#' @param NA None yet
#'
#' @importFrom rvest read_html html_nodes
#'
#' @examples show_tinyCat()
#'
#' @export
show_tinyCat <- function() {
  img <- magick::image_read(find_tinyCat())
  print(img)
}
