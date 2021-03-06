% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_map_state.R
\name{fars_map_state}
\alias{fars_map_state}
\title{Plot accidents on a map.}
\usage{
fars_map_state(state.num, year)
}
\arguments{
\item{state.num}{A number specifying the state.}

\item{year}{A character string or a number specifying the year.}
}
\description{
Function that plots on a map accidents that had occurred
in a specified state in a specified year.
}
\details{
When no accidents occurred, a message is printed and the
function returns \code{NULL}.
}
\examples{
\dontrun{fars_map_state(state.num = 21, year = "2013")}

}
