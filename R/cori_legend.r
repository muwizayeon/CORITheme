#' A [ggplot2] legend formatted in the Center on Rural Innovation (CORI) style
#'
#' \code{cori_legend} provides [ggplot2] theme formatted
#' according to the CORI style guide.
#'
#'
#' @param title a title name of legend, default ""
#' @param base_font_size font size of legend, default 14
#' @param vjust adjust the vertical position
#'
#' @export
#'
cori_legend <- function(title="", base_font_size=12, vjust=0) {

  black <- "#121E22"
  
  ggplot2::guides(
             fill=ggplot2::guide_legend(
               title.theme = ggplot2::element_text(
                                        color=black,
                                        size=1.14285714286*base_font_size
                                      ),
               title.vjust = vjust,
               title.position = "top",
               caption.position = "panel",
               title = title
             )
           ) 
}
