#' A [ggplot2] theme formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{theme_cori} provides [ggplot2] theme formatted
#' according to the CORI style guide.
#'
#' @import extrafont
#' @import greple
#' @md
#'
#' @param
#' @param
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
                                         margin=margin(t=-35, b=40)
                                           #base_font_size
                                       ),
               axis.title.y = ggplot2::element_text(
                                         family = base_family,
                                         color = black,
                                         angle = 0,
                                         vjust = 0.95,
                                         margin=margin(l=30, r=-40)
                                       ),
               axis.title.x = element_blank(),
               panel.grid.major.x = element_blank(),
               panel.grid.minor.x = element_blank(),
               legend.position="bottom",
               legend.justification = c(0,0)
               #complete = TRUE
             )
}
