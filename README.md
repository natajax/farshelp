# farshelp
[![Build Status](https://travis-ci.org/natajax/farshelp.svg?branch=master)](https://travis-ci.org/natajax/farshelp)

The package farshelp was developed as a learning project to develop R pacakges. It provides a few basic functions to allow limited information extraction and processing from the Fatality Analysis Rate System (FARS).

## Installation

You can install farshelp from github with:


``` r
# install.packages("devtools")
devtools::install_github("natajax/farshelp")
```

## Example

This is a basic example which shows you how to summarize incidence of accidents for given years:

``` r
my_years <- fars_summarize_years(c(2013, 2014))
```
