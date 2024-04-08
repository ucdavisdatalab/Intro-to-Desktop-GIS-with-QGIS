#!/usr/bin/env Rscript

show_help = function() {
  # ' Show a help message
  cat("Render a workshop reader website with Bookdown.\nArguments:\n")
  cat("[-h | --help]\t Show this help message\n")
  cat("[-p | --pdf]\t Include to render a PDF while building site\n")
  quit()
}

main = function(args) {
  # ' Run the script
  if ("-h" %in% args || "--help" %in% args) {
    show_help()
  }
  if ("-p" %in% args || "--pdf" %in% args) {
    bookdown::render_book(
      "index.Rmd", output_format = "pdf_document", output_file = "docs/_main"
    )
  }
  bookdown::render_book("index.Rmd")
}


if (!interactive()) {
  args = commandArgs(trailingOnly=TRUE)
  main(args)
}
