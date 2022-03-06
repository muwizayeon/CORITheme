#' A [ggplot2] theme formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{theme_cori_horizontal_bars} provides [ggplot2] theme formatted
#' according to the CORI style guide.
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @param base_family, the font family that CORI employed, default TT Hoves
#' @param base_font_size, the default text font size
#'
#' @export
#'
  theme_cori_horizontal_bars <- function(base_family = "TT Hoves", base_font_size=12) 
  {  

  ggplot2::theme_minimal() +
    ggplot2::theme(
      text = ggplot2::element_text(
        family = base_family,
        color = "#121E22"),
      plot.title = ggplot2::element_text(
        family = base_family,
        color="#121E22",
        size=24,hjust=0.15,
        face="bold"),
      plot.subtitle = ggplot2::element_text(
        family = base_family,
        color="#121E22",
        size=12,hjust=0.13),
      plot.caption = ggplot2::element_text(
        family = base_family,
        color= "#666666",
        size=8,
        hjust=0.015,
        margin=ggplot2::margin(t=-35, b=40)
      ),
      axis.title.y=ggplot2::element_blank(),
      axis.text.y=ggplot2::element_blank(),
      axis.ticks.y=ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_blank(),
      panel.grid.minor.y = ggplot2::element_blank(),
      axis.title.x = ggplot2::element_text(color="black", size=10,vjust=0,hjust=0.05)
    )
}
