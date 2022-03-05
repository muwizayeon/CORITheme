#' A [ggplot2] legend formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{cori_legend} provides [ggplot2] theme formatted
#' according to the CORI style guide.
#'
#' @import extrafont
#' @import ggreple
#' @md
#'
#' @param
#' @param
#'
#' @export
#'
cori_legend <- function(title="", font_size=14) {

  black <- "#121E22"
  
  ggplot2::guides(
             fill=guide_legend(
               title.theme = ggplot2::element_text(
                                        color=black,
                                        face="bold",
                                        size=font_size
                                      ),
               title.vjust = 6,
               title.position = "top",
               caption.position = "panel",
               title = title
             )
           ) 
}
