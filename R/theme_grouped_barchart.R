#' A [ggplot2] theme formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{theme_grouped_barchart} provides [ggplot2] theme formatted
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
theme_grouped_barchart <- function(base_family = "TT Hoves", base_font_size=12) 
{  
  
  ggplot2::theme_minimal() +
    ggplot2::theme_bw() +
    ggplot2::theme(
      text = ggplot2::element_text(
        family = base_family,
        color = "#121E22"),
      plot.title = ggplot2::element_text(
        family = base_family,
        color="#121E22",
        size=24,
        hjust=-0.3,
        face="bold"),
      plot.subtitle = ggplot2::element_text(
        family = base_family,
        color="#121E22",
        size=12,hjust=-0.42),
      plot.caption = ggplot2::element_text(
        family = base_family,
        color= "#666666",
        size=8,
        hjust=0.015,
        margin=ggplot2::margin(t=-35, b=40)
      ),
      legend.position="bottom",
      legend.justification = "left",
      legend.direction = "horizontal",
      legend.title=ggplot2::element_blank(),
      legend.key.size = ggplot2::unit(0.2, 'cm'),
      legend.key.width= ggplot2::unit(1.1, 'cm'),
      legend.text = ggplot2::element_text(size=10),
      legend.spacing.x = ggplot2::unit(0.3, "cm"),
      panel.border = element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      axis.title.x = ggplot2::element_text(color = "#121E22",angle = 0,
                                           hjust = 0.03, margin = margin(r = -2, t = -10, b = -10, l = 50)),
      axis.title.y = ggplot2::element_text(color = "#121E22",angle = 0,
                                           vjust = 1.1, margin = margin(r = -100, t = -10, b = -10, l =0))
      
    )
}
