#' Read fars data.
#'
#' Function that reads fars data from a file
#' and converts it into a tibble.
#'
#' @param filename (required) A character string specifying path to the fars
#'   data.
#'
#' @return A tibble, i.e. an object that inherits from classes \code{"tbl_df"},
#'  \code{"tbl"}, and \code{"data.frame"} (for details, see \url{https://tibble.tidyverse.org/}).
#'
#' @importFrom readr read_csv
#' @importFrom dplyr tbl_df
#'
#' @examples
#' \dontrun{
#' fars_read("fars.data.csv")
#' }
#'
#' @export

fars_read <- function(filename) {
  if(!file.exists(filename))
    stop("file '", filename, "' does not exist")
  data <- suppressMessages({
    readr::read_csv(filename, progress = FALSE)
  })
  dplyr::tbl_df(data)
}
