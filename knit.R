#!/usr/bin/env Rscript

# Settings for bookdown are in `_bookdown.yml` and settings for pandoc are in
# `index.Rmd`.
bookdown::render_book("index.Rmd")
