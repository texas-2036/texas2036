% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/themes.R
\name{theme_2036}
\alias{theme_2036}
\title{Texas 2036 ggplot2 Themes}
\usage{
theme_2036(
  base_size = 14,
  base_family = "Montserrat",
  title_size = 23,
  subtitle_size = 12,
  caption_size = 10,
  ...
)
}
\arguments{
\item{base_size}{the base font size of text}

\item{base_family}{the font family}

\item{title_size}{the size of your title font}

\item{subtitle_size}{the size your subtitle font}

\item{caption_size}{the size your caption font}

\item{...}{Additional arguments passed to [ggplot2::theme_minimal()]}
}
\value{
a ggplot theme
}
\description{
Minimalistic ggplot themes for use on AVALANCHE reports.
}
\examples{

ggplot2::qplot(iris$Sepal.length) +
theme_2036(base_size=14,title_size=23, subtitle_size=12)
}
