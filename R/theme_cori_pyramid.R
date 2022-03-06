#' A [ggplot2] theme formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{theme_cori_pyramid} provides [ggplot2] theme for population pyramids
#'
#' @md
#' @param base_family, the font family that CORI employed, default TT Hoves
#' @param base_font_size, the default text font size
#'
#' @export
#'
theme_cori_pyramid <- function(base_family = "TT Hoves", base_font_size=12) {
  black = "#121E22"
  gray = "#666666"
  
  ggplot2::theme_minimal() +
    ggplot2::theme(
      text = ggplot2::element_text(
        family = base_family,
        color = black),
      #size = base_font_size),
      plot.title = ggplot2::element_text(
        family = base_family,
        color=black,
        size=24,
        #2*base_font_size,
        face="bold"),
      plot.subtitle = ggplot2::element_text(
        family = base_family,
        color=black,
        size=12),
      #1.17*base_font_size),
      plot.caption = ggplot2::element_text(
        family = base_family,
        color=gray,
        size=8,
        hjust=0.015,
        margin=ggplot2::margin(t=-35, b=40)
        #base_font_size
      ),
      axis.title.y = element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor.x = ggplot2::element_blank(),
      panel.grid.minor.y = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_blank(),
      legend.position="bottom",
      legend.justification = c(0,0),
      axis.line.x.bottom=element_line(color="#D2D6D7"),
      axis.title.x = element_text(hjust=margin(0,0,0,0))
      #complete = TRUE
    )
}