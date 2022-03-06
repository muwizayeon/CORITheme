#' Fill scale constructor for cori colors
#'
#' @param palette Character name of palette in cori_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @examples
#' ggplot2::ggplot(iris, ggplot2::aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) + ggplot2::geom_point(size = 4, alpha = .6) + scale_color_cori(discrete = FALSE, palette = "ctg7")
#'
#' @export
#' 
scale_fill_cori <- function(
                            palette = "ctg2gn",
                            discrete = TRUE,
                            reverse = FALSE, ...)
{
  pal <- cori_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale(
               "fill", paste0("cori_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
