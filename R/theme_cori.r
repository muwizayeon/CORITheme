#' A [ggplot2] theme formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{theme_cori} provides [ggplot2] theme formatted
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
theme_cori <- function(base_family = "TT Hoves", base_font_size=12) {
  black = "#121E22"
  gray = "#666666"

  ggplot2::theme_minimal() +
    ggplot2::theme(
               text = ggplot2::element_text(
                                 family = base_family,
                                 color = black,
                                 size = base_font_size),
               plot.title = ggplot2::element_text(
                                       family = base_family,
                                       color=black,
                                       face="bold",
                                       3*base_font_size,
                                       ),
               plot.subtitle = ggplot2::element_text(
                                          family = base_family,
                                          color=black,
                                          #size=12),
                                          1.14285714286*base_font_size),
               plot.caption = ggplot2::element_text(
                                         family = base_family,
                                         color=gray,
                                         size=0.85714285714*base_font_size,
                                         hjust=0.015,
                                         margin=ggplot2::margin(t=10, b=40)
                                       ),
               axis.title.y = ggplot2::element_text(
                                         family = base_family,
                                         color = black,
                                         size = base_font_size,
                                         angle = 0,
                                         vjust = 0.95,
                                         margin=ggplot2::margin(l=0, r=-40)
                                       ),
               axis.title.x = ggplot2::element_blank(),
               panel.grid.major.x = ggplot2::element_blank(),
               panel.grid.minor.x = ggplot2::element_blank(),
               panel.grid.major.y = ggplot2::element_line(linetype="dotted"),
               axis.line.x = element_line(size = 0.5, colour = gray),
               legend.position="bottom",
               legend.justification = c(0,0)
               #complete = TRUE
             )
}
