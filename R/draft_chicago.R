#' @title Draft a new R Markdown document using the Chicago AD style
#'
#' @param name String value for the name of the new R Markdown document (i.e., "my_new_document.Rmd")
#' @param ... Additional arguments to pass to `rmarkdown::draft`
#'
#' @importFrom rmarkdown draft
#'
#' @return A new R Markdown document using the Chicago AD style
#' @export
#'
#' @examples
#' try(kevins.templates::draft_chicago("my_new_document.Rmd"))
draft_chicago <- function(name, ...) {

  rmarkdown::draft(name, template = "chicago_ad", package = "kevins.templates", ...)

}
