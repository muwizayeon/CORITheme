#' Return function to interpolate a cori color palette
#'
#' @param palette Character name of palette in cori_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @examples cori_pal("ctg7")
#'
#' @export
#' 
cori_pal <- function(palette = "ctg2gn", reverse = FALSE, ...) {
  pal <- cori_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
