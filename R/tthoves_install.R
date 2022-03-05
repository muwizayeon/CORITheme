#' Import and register TT Hoves font
#'
#' \code{{tthoves_install}} checks whether TT Hoves is imported and registered.
#' If the font does not imported and registered, then the \code{{{tthoves_install}}} let you know that the font should be installed the computer. Once, the font installed the local instance, then \code{{tthoves}} will import fonts and register to the R.
#'
#' @md
#' @export
#'
tthoves_install <- function() {
  if (sum(grepl("TT Hoves", extrafont::fonts())) > 0 ) {
    "TT Hoves font is already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    tthoves_test()
  }
}
