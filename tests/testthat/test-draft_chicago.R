# Load the testthat package
library(testthat)

# Create a temporary directory for testing
temp_dir <- tempdir()
test_name <- "test_draft_chicago"

# Test the draft_chicago function
test_that("draft_chicago function generates the directory", {
  # Set the working directory to the temporary directory
  old_wd <- setwd(temp_dir)
  on.exit(setwd(old_wd))

  # Clean up before testing
  if (dir.exists(test_name)) {
    unlink(test_name, recursive = TRUE)
  }

  # Call the function
  draft_chicago(test_name)

  # Check if the directory exists
  expect_true(dir.exists(test_name))
})

test_that("draft_chicago function deposits the files", {
  # Set the working directory to the temporary directory
  old_wd <- setwd(temp_dir)
  on.exit(setwd(old_wd))

  # Clean up before testing
  if (dir.exists(test_name)) {
    unlink(test_name, recursive = TRUE)
  }

  # Call the function
  draft_chicago(test_name)

  # Define the expected files
  skeleton_dir <- system.file("rmarkdown", "templates", "chicago_ad", "skeleton", package = "kevins.templates")
  resources_dir <- system.file("rmarkdown", "templates", "chicago_ad", "resources", package = "kevins.templates")

  skeleton_files <- list.files(skeleton_dir, full.names = TRUE)
  skeleton_files <- skeleton_files[basename(skeleton_files) != "skeleton.Rmd"]
  resources_files <- list.files(resources_dir, full.names = TRUE)

  # Check if the skeleton files are copied correctly
  for (file in skeleton_files) {
    expect_true(file.exists(file.path(test_name, basename(file))))
  }

  # Check if the resources files are copied correctly
  resources_dest_dir <- file.path(test_name, "resources")
  for (file in resources_files) {
    expect_true(file.exists(file.path(resources_dest_dir, basename(file))))
  }
})
