#' Kevin's Chicago/Apsa style template
#'
#' This is an R markdown template that makes it easier to generate word documents that
#' follow the Chicago/APSA format rules. Accordingly, the template uses the author-date
#' version of Chicago format.
#'
#'
#'
#' @inheritParams rmarkdown::word_document
#' @param ... Arguments to [`rmarkdown::word_document`].
#' @md
#' @export
word <- function(...){
  templ <- system.file("rmarkdown", "templates", "word", "resources", "template.docx", package = "kevins.templates")
  rmarkdown::word_document(reference_docx = templ,
                           ...)
}

#' @rdname word
#' @export
templ_word <- function(){
  print(system.file("rmarkdown", "templates", "word", "resources", "template.docx", package = "kevins.templates"))
}
