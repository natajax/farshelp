#' Summarize accidents by year and month.
#'
#' Function that takes as input a vector of years,
#' reads fars data for them, and summarizes accident
#' incidence by year and month.
#'
#' @param years A numeric, integer, or character vector specifying the years for
#'   which accident occurrence will be collected.
#'
#' @return A tibble summarizing the number of accidents for each month
#' and year (months are in rows and years
#' in columns).
#'
#' @importFrom dplyr bind_rows group_by summarize
#' @importFrom tidyr spread
#' @importFrom magrittr "%>%"
#'
#' @examples
#' \dontrun{
#' far_summarize_years(c(2013, 2014))
#' }
#'
#' @export

fars_summarize_years <- function(years) {
  dat_list <- fars_read_years(years)
  dplyr::bind_rows(dat_list) %>%
    dplyr::group_by(year, MONTH) %>%
    dplyr::summarize(n = n()) %>%
    tidyr::spread(year, n)
}
