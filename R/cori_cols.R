#' Function to extract cori_ctg7 colors as hex codes
#'
#' @param ... Character names of cori_ctg7 colors 
#'
#' @examples
#' cori_cols("Emerald")
#'
#' @export
#' 
cori_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (cori_colors)

  cori_colors[cols]
}
