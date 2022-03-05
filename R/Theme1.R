library(ggplot2)
install.packages('showtext')
library(showtext)

bar_theme <- function() {
  theme(legend.position="bottom", 
        legend.justification = "left",
        legend.title=element_blank(),
        legend.margin=margin(c(0,0,0,0)),
        axis.line.x.bottom=element_line(color="#D2D6D7"),
        #Note: you must download TTHoves-Bold and TTHoves-Regular for this function
        axis.title.x = element_text(family="TTHoves-Bold", hjust=margin(-20,0,0,0)),
        axis.title.y = element_blank(),
        plot.margin=unit(c(0,0,0,0), "mm"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        text=element_text(family="TTHoves-Regular"),
        plot.title = element_text(family="TTHoves-Bold", size=16),
        plot.title.position = "plot"
  )
}