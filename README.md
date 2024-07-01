# kevins.templates
An R package housing my rmd templates

Currently, the only supported template is Chicago author date, which is the style I utilize the most often in my department. I will continue updating this package as I begin using more varied formats for paper-writing and employing other document types that work within the RMarkdown/Quarto paradigms. 

This package is inspired by the `stevetemplates` package by Steven Miller, [which can be found here](https://svmiller.com/stevetemplates/). See also the `rticles` package by RStudio, [which can be found here](https://pkgs.rstudio.com/rticles/).

# Installation

To install this package, you can use the `devtools` package:

```r 
devtools::install_github("KevinNavarreteParra/kevins.templates")
```

which will pull the most recent development version of the package from this repository. 

# Usage

To use the package, you can call the `draft_chicago` function, which will create a new folder with a new RMarkdown file in the Chicago author date format. Moreover, this function will also pull important files from the `kevins.templates` package, such as the `works-cited.bib` file, which contains a made up reference for reference. For more information about where I found these template files, please see the documents in the `skeleton` folder, where you'll find the original template documents along with their attribution information. 

If you have any questions or suggestions, please feel free to reach out to me or to open an issue on this repository.

# Note

The `chicagoad` function is a deprecated version of the same `draft_chicago` function, though the former was initially set up to work with an Rmd file that knit to Word, not PDF. 
