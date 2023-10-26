#' Create a DNA string
#'
#' @param size
#'
#' @return string
#' @export
#'
#' @examples
#' length <- 50
#' create_String(length)
#'
create_String <- function(size){
  vector <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  string <- paste0(vector, collapse = "")
  return(string)
}
