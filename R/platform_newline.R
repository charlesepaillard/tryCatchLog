# ***************************************************************************
# Copyright (C) 2016 Juergen Altfeld (R@altfeld-im.de)
# ---------------------------------------------------------------------------
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# ***************************************************************************



#' Gets the operating system specific new line character(s)
#'
#' CR + LF on Windows, else only LF...
#'
#' The newline character(s) are determined once at package loading time.
#'
#' @return the new line character(s) for the current operating system
#'
#' @export
#'
#' @examples
#' platform.NewLine()
platform.NewLine <- function() {

  return(.tryCatchLog.env$newline)

}



#' Determines the operating system specific new line character(s)
#'
#' CR + LF on Windows, else only LF...
#'
#' This function is pendant to Microsoft's .Net "Environment.NewLine".
#'
#' @return the new line character(s) for the current operating system
#'
#' @references \url{https://stackoverflow.com/questions/47478498/build-string-with-os-specific-newline-characters-crlf-lf-cr-to-write-it-into}
#'
#' @note         THIS IS A PACKAGE INTERNAL FUNCTION AND THEREFORE NOT EXPORTED.
#'
determine.platform.NewLine <- function() {

  is.windows <- grepl(tolower(.Platform$OS.type), "windows", fixed = TRUE)

  if (is.windows) {
    newline <- "\r\n"
  } else {
    newline <- "\n"
  }

  sys.name <- Sys.info()["sysname"]
  is.windows.2nd.opinion <- grepl(tolower(sys.name), "windows", fixed = TRUE)

  if (is.windows != is.windows.2nd.opinion)
    warning("R seems to run on Windows OS but this could not be recognized for sure")

  return(newline)
}