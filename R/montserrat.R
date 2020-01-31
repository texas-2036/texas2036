#' Import Montserrat font for use in charts
#'
#' Public Sans is Copyright 2015 Impallari Type and licensed under the
#' SIL Open Font License, Version 1.1
#'
#' There is an option `hrbrthemes.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#'
#' @md
#' @note This will take care of ensuring PDF/PostScript usage. The location of the
#'   font directory is displayed after the base import is complete. It is highly
#'   recommended that you install them on your system the same way you would any
#'   other font you wish to use in other programs.
#' @export
import_public_sans <- function() {

  pub_font_dir <- system.file("fonts", "montserrat", package="texas2036")

  suppressWarnings(suppressMessages(extrafont::font_import(pub_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      pub_font_dir)
  )

}

#' @rdname Montserrat
#' @md
#' @title Montserrat font name R variable aliases
#' @description `font_pub` == "`Public Sans`"
#' @format length 1 character vector
#' @export
font_pub <- "Montserrat"

#' @rdname Montserrat
#' @md
#' @note `font_mon_bold` (a.k.a. "`Montserrat Bold`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_mon_bold` == "`Montserrat Bold`"
#' @export
font_mon_bold <- "Montserrat Bold"

#' @rdname Montserrat
#' @md
#' @description `font_mon_light` == "`Montserrat Light`"
#' @export
font_mon_light <- "Montserrat Light"

#' @rdname Montserrat
#' @md
#' @description `font_mon_thin` == "`Montserrat Thin`"
#' @export
font_mon_thin <- "Montserrat Thin"
