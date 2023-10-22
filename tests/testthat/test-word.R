context("Does word template exist")

testthat::expect_true(file.exists(system.file("rmarkdown",
                                              "templates",
                                              "chicagoad",
                                              "Resources",
                                              "template.docx",
                                              package = "kevins.templates")))


