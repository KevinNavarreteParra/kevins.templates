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

  # Create the new R Markdown file from the template
  rmarkdown::draft(name, template = "chicago_ad", package = "kevins.templates", ...)

  # Define the source paths
  skeleton_dir <- system.file("rmarkdown", "templates", "chicago_ad", "skeleton", package = "kevins.templates")
  resources_dir <- system.file("rmarkdown", "templates", "chicago_ad", "resources", package = "kevins.templates")

  # Define the destination directory (the folder created by rmarkdown::draft)
  destination_dir <- file.path(getwd(), name)

  # Ensure the destination directory exists
  if (!dir.exists(destination_dir)) {
    stop("Destination directory does not exist.")
  }

  # List all files in the skeleton and resources directories
  skeleton_files <- list.files(skeleton_dir, full.names = TRUE)
  skeleton_files <- skeleton_files[basename(skeleton_files) != "skeleton.Rmd"]
  resources_files <- list.files(resources_dir, full.names = TRUE)

  # Copy the skeleton files to the destination directory
  file.copy(skeleton_files, destination_dir, overwrite = TRUE, recursive = TRUE)

  # Create a resources subdirectory in the destination directory if it doesn't exist
  if (!dir.exists(file.path(destination_dir, "resources"))) {
    dir.create(file.path(destination_dir, "resources"))
  }

  # Copy the resources files to the resources subdirectory in the destination directory
  file.copy(resources_files, file.path(destination_dir, "resources"), overwrite = TRUE, recursive = TRUE)

  message("Draft created successfully with all required files.")
}
