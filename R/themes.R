#' Texas 2036 ggplot2 Themes
#'
#' Minimalistic ggplot themes for use on AVALANCHE reports.
#'
#' @param base_size the base font size of text
#' @param base_family the font family
#' @param title_size the size of your title font
#' @param subtitle_size the size your subtitle font
#' @param caption_size the size your caption font
#' @param ... Additional arguments passed to [ggplot2::theme_minimal()]
#'
#' @return a ggplot theme
#' @export
#'
#' @examples
#'
#' ggplot2::qplot(iris$Sepal.length) +
#' theme_2036(base_size=14,title_size=23, subtitle_size=12)
theme_2036 <- function(base_size=14,base_family="Montserrat",title_size=23, subtitle_size=12, caption_size=10, ...) {
  ggplot2::theme_minimal(base_size = base_size,base_family = base_family,...) +
  ggplot2::theme(plot.title = ggtext::element_markdown(size = title_size, color= "#3A4A9F",family = "Montserrat-ExtraBold"),
                   plot.subtitle = ggtext::element_markdown(size = subtitle_size, family = "Montserrat"),
                   plot.caption = ggplot2::element_text(family="Montserrat-Regular", color="#8C8F93",size=caption_size, lineheight = 1, hjust = 0, vjust=-5),
                   axis.title.x = ggplot2::element_text(family="Montserrat-Bold", size=8, color="#6B6D6F"),
                   axis.title.y = ggplot2::element_text(family="Montserrat-Bold", size=8, color="#6B6D6F"),
                   legend.position = "none",
                   plot.margin = ggplot2::unit(c(t=1, r=1.5, b=2, l=1), "lines")
    ) +
  ggplot2::theme(axis.line.x =  ggplot2::element_line(color="#5d5d5d", size=.8),
              panel.grid.major.y = ggplot2::element_line(color="#e3e3e3"),
              panel.grid.minor.y = ggplot2::element_line(linetype=2, size=0, color="#e3e3e3"),
              panel.grid.major.x = ggplot2::element_blank(),
              panel.grid.minor.x = ggplot2::element_blank(),
              axis.title.x = ggplot2::element_text(hjust=1),
              axis.title.y = ggplot2::element_text(hjust=1),
              axis.ticks.x = ggplot2::element_line(size = .5))
}

# add_brand <- function () {
#
#   get_png <- function(filename) {
#     grid::rasterGrob(png::readPNG(filename), interpolate = TRUE)
#   }
#
#   l <- get_png("logo_grey.png")
#
#   gg  +
#
# }
