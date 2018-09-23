#' Construct file name
#'
#' Funtion that constructs a character string representing the filename of fars
#' data for a specified year.
#'
#' @param year A character or integer vector of length 1, specifying the year.
#'
#' @return A character vector of length 1.
#'
#' @examples
#' make_filename(1987)
#' make_filename("1987")
#'
#' @export

make_filename <- function(year) {
  year <- as.integer(year)
  sprintf("accident_%d.csv.bz2", year)
}
