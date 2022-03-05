#' Color scale constructor for cori colors
#'
#' @param palette Character name of palette in cori_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @examples
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#' geom_point(size = 4) + scale_color_cori()
#'
#' @export
#' 
scale_color_cori <- function(palette = "ctg2gn", discrete = TRUE, reverse = FALSE, ...) {
  pal <- cori_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale(
               "colour", paste0("cori_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}
