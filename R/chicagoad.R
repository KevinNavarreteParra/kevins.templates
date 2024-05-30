#' @title Generate a PDF Document with the Chicago AD Template
#'
#' @param ... Arguments passable to `rmarkdown::word_document`
#'
#' @return A PDF document with the Chicago AD template
#' @export
#'
#' @importFrom rmarkdown pdf_document
#'
#' @details
#' Thank you to Steve Miller's `stevetemplates` library for providing a baseline for this function.
#'
#'
#' @examples
#' try(rmarkdown::render("path/to/your.Rmd", kevins.templates::chicagoad()))
chicagoad <- function(...){
  template <- system.file("rmarkdown", "templates", "chicago_ad", "Resources", "template.docx",
                          package = "kevins.templates")
  rmarkdown::pdf_document(template = template,
                          latex_engine = "pdflatex",
                          ...)
}
