#' @title Generate a PDF Document with the Chicago AD Template
#'
#' @param ... Arguments passable to `rmarkdown::word_document`
#'
#' @return A PDF document with the Chicago AD template
#' @export
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom lifecycle deprecate_stop badge
#'
#' @details
#' Thank you to Steve Miller's `stevetemplates` library for providing a baseline for this function.
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' This function was deprecated because it was originally intended for use with Word, not PDF, which has much more limited functionality for templates. Please use `draft_chicago` instead.
#'
#' @keywords internal
#'
#' @examples
#' try(rmarkdown::render("path/to/your.Rmd", kevins.templates::chicagoad()))
chicagoad <- function(...){

  lifecycle::deprecate_stop(when = "2024-07-01",
                            what = "This function is now deprecated. Please use `draft_chicago` instead.")

  template <- system.file("rmarkdown", "templates", "chicago_ad", "Resources", "template.docx",
                          package = "kevins.templates")
  rmarkdown::pdf_document(template = template,
                          latex_engine = "pdflatex",
                          ...)
}
