
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BusRando <img src="man/figures/compendium-sticker.png" align="right" style="float:right; height:120px;"/>

<!-- badges: start -->
<!-- badges: end -->
<p align="left">
• <a href="#overview">Overview</a><br> •
<a href="#features">Features</a><br> •
<a href="#content">Content</a><br> •
<a href="#installation">Installation</a><br> •
<a href="#usage">Usage</a><br> • <a href="#citation">Citation</a><br> •
<a href="#contributing">Contributing</a><br> •
<a href="#acknowledgments">Acknowledgments</a><br> •
<a href="#references">References</a>
</p>

## Overview

This research compendium helps you identify which hiking trails you can
reach with the bus!

## Features

The main purpose of this compendium is to point you to hiking trails
that you can reach with the bus (obviously).

## Content

This repository is structured as follow:

- [`DESCRIPTION`](https://github.com/soumaya-belghali/BusRando/tree/main/DESCRIPTION):
  contains project metadata (authors, date, dependencies, etc.)

- [`make.R`](https://github.com/soumaya-belghali/BusRando/tree/main/make.R):
  main R script to run the entire project

- [`R/`](https://github.com/soumaya-belghali/BusRando/tree/main/R):
  contains R functions developed especially for this project

- [`analyses/`](https://github.com/soumaya-belghali/BusRando/tree/main/R):
  contains R functions that return figures and tables

- [`data/`](https://github.com/soumaya-belghali/BusRando/tree/main/data):
  just sets the architecture of the folders where the data will be
  downloaded by the first step of the workflow (empty for this online
  repository to save the environment)

- [`outputs/`](https://github.com/soumaya-belghali/BusRando/tree/main/outputs):
  contains data for the targets pipeline

## Installation

To install this compendium:

- [Fork](https://docs.github.com/en/get-started/quickstart/contributing-to-projects)
  this repository using the GitHub interface.
- [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
  your fork using `git clone fork-url` (replace `fork-url` by the URL of
  your fork). Alternatively, open [RStudio
  IDE](https://posit.co/products/open-source/rstudio/) and create a New
  Project from Version Control.

## Usage

Launch the
[`make.R`](https://github.com/soumaya-belghali/BusRando/tree/main/make.R)
file with:

``` r
source("make.R")
```

**Notes**

- All required packages listed in the `DESCRIPTION` file will be
  installed (if necessary)
- All required packages and R functions will be loaded
- Some analyses listed in the `make.R` might take time

## Citation

Please use the following citation:

> Belghali S., Gregory K.A., Medeiros N.F. (2023)

## Contributing

All types of contributions are encouraged and valued. For more
information, check out our [Contributor
Guidelines](https://github.com/soumaya-belghali/BusRando/blob/main/CONTRIBUTING.md).

Please note that this project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## Acknowledgments

Many thanks to the amazing team of the FRB-CESAB & GdR EcoStat training
course who organised this workshop and suffered with us for the entire
week!!
