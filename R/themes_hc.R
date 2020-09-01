#' Texas 2036 highcharter Themes
#'
#' Minimalistic highcharter themes for use on Texas 2036 sites.
#'
#' @param base_size the base font size of text
#' @param base_family the font family
#' @param title_size the size of your title font
#' @param title_weight the weight your tiitle font
#' @param subtitle_size the size your subtitle font
#' @param subtitle_weight the size your subtitle font
#' @param credit_size the size your credits font
#' @param header_align where to align the title and subtitle
#' @param legend_align where to align the legend
#' @param credits_align where to align the credits
#' @param ... Additional arguments passed to [highcharter::hc_theme()]
#'
#'
#' @return a highcharter theme
#' @export
#'
#' @examples
#'
#' data(economics_long, package = "ggplot2")
#'
#' economics_long2 <- dplyr::filter(economics_long, variable %in% c("pop", "uempmed", "unemploy"))
#'
#' head(economics_long2)
#'
#' hchart(economics_long2, "line", hcaes(x = date, y = value01, group = variable)) %>%
#' tx2036_hc_light()
tx2036_hc_light <- function(base_size="12px", base_family="Montserrat", title_size="28px", title_weight = "800", subtitle_size="14px", subtitle_weight = "400",
                            credit_size="10px", header_align = "left", legend_align = "center", credits_align = "left", ...) {

highcharter::hc_theme_merge(
  highcharter::hc_theme_smpl(),
  highcharter::hc_theme(colors = c("#002D74", "#F26852", "#2A7DE1", "#00A9C5", "#3A4A9F"),
           marker = list(fillColor = c("#002D74", "#F26852", "#2A7DE1", "#00A9C5", "#3A4A9F"),
                         lineColor = '#000',
                         radius = 3,
                         lineWidth = 1,
                         symbol = "circle"),
           chart = list(backgroundColor = "#fff",
                        style = list(fontFamily = base_family,
                                     fontSize = base_size,
                                     color="#2d2d2d",
                                     fontWeight="500",
                                     textTransform="initial")),
           title = list(style = list(fontFamily = base_family,
                                     fontSize = title_size,
                                     fontWeight = title_weight,
                                     color="#2d2d2d"),
                        align = header_align),
           subtitle = list(style = list(fontFamily = base_family,
                                        color="#2d2d2d",
                                        textTransform="initial",
                                        fontWeight=subtitle_weight,
                                        fontSize = subtitle_size),
                           align = header_align),
           legend = list(align = legend_align,
                         style = list(fontFamily = base_family,
                                      color="white"),
                         itemStyle = list(fontFamily = base_family,
                                          color = '#2d2d2d'),
                         itemHoverStyle = list(color = 'gray'),
                         verticalAlign = "top"),
           credits = list(style = list(color = "#2d2d2d",
                                       fontSize = credit_size),
                          align = credits_align),
           xAxis = list(labels =list(style = list(fontFamily = base_family,
                                                  color="#2d2d2d")),
                        title = list(style = list(color = "#2d2d2d",
                                                  fontSize = "12px",
                                                  color="#2d2d2d",
                                                  fontWeight="500")),
                        lineColor = '#2d2d2d',
                        lineWidth = 2,
                        gridLineWidth = 0,
                        gridLineColor = 'rgba(219,220,221,1)',
                        tickColor = 'rgba(219,220,221,1)',
                        tickWidth = 1),
           yAxis = list(labels =list(style = list(fontFamily = base_family,
                                                  color="#2d2d2d")),
                        title = list(style = list(color = "#2d2d2d",
                                                  fontSize = "12px",
                                                  color="#2d2d2d",
                                                  fontWeight="500")),
                        gridLineWidth = 1,
                        lineColor = 'rgba(219,220,221,1)',
                        lineWidth = 0,
                        MinorGridLineWidth = 0,
                        MinorGridLineColor = 'rgba(219,220,221,1)',
                        gridLineWidth = 1,
                        gridLineColor = 'rgba(219,220,221,1)',
                        tickColor = 'rgba(219,220,221,1)',
                        tickWidth = 1)))

}
