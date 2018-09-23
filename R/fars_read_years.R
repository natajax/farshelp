
#' Get year / month accident incidence.
#'
#' Function that collects accidents, and the
#' month that they happened, for specified years.
#'
#' @param years A numeric, integer, or character vector specifying the years for
#'   which accident occurrence will be collected.
#'
#' @details The function checks whether a file for a given year exists; if not,
#'   a warning is issued and \code{NULL} is returned for that year.
#'
#' @return A list with as many elements as there elements in the input vector
#'   \code{years}. Each element in the list represent on year;  it is a tible
#'   with column \code{"MONTH"} and \code{"year"}.
#'
#' @importFrom dplyr mutate select
#' @importFrom magrittr "%>%"
#'
#' @examples
#' \dontrun{
#'  fars_read_year(c(2013, 2014))
#' }
#'
#' @export

fars_read_years <- function(years) {
  lapply(years, function(year) {
    file <- make_filename(year)
    tryCatch({
      dat <- fars_read(file)
      dplyr::mutate(dat, year = year) %>%
        dplyr::select(MONTH, year)
    }, error = function(e) {
      warning("invalid year: ", year)
      return(NULL)
    })
  })
}
