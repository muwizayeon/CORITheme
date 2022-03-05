#' Test whether the TT hoves font are properly imported and registered
#'
#' \code{tthoves_test} tests to see if it is imported and registered.
#' TT hoves font family is necessary to install
#' \href{https://www.dropbox.com/sh/s5xw4dbcag403zw/AACekAb3h4GFxBBw0WGeRl0Pa?dl=0}{TT Hoves font}
#'
#' Import and register TT hoves font in R with tthoves_install()
#'
#' @md
#' @export
#'
tthoves_test <- function() {
  if (sum(grepl("TT Hoves", extrafont::fonts()))>0) {
    "TT Hoves font is imported and registered."
  } else {
    "TT Hoves font is not imported and registered. Install the font and import and register using tthoves_install()."
  }
}
