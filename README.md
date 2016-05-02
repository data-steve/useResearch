useResearch [![Follow](https://img.shields.io/twitter/follow/data_steve.svg?style=social)](https://twitter.com/intent/follow?screen_name=data_steve)[![Follow](https://img.shields.io/twitter/follow/tylerrinker.svg?style=social)](https://twitter.com/intent/follow?screen_name=tylerrinker)
============


[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Build
Status](https://travis-ci.org/data-steve/useResearch.svg?branch=master)](https://travis-ci.org/data-steve/useResearch)
<a href="https://img.shields.io/badge/Version-0.0.1-orange.svg"><img src="https://img.shields.io/badge/Version-0.0.1-orange.svg" alt="Version"/></a>

![](/inst/useRs.jpg)

<a href='http://www.freepik.com/free-vector/male-and-female-avatars_766955.htm'>Modified from Design by Freepik</a>

[![Build
Status](https://travis-ci.org/data-steve/useResearch.svg?branch=master)](https://travis-ci.org/data-steve/useResearch)


**useResearch** provides user research capabilities to the R Community at the functional Level. R developers can enable any function in their package(s) with the ability to track (very basically) its use via a pingback signal to a Google Form, which they create and maintain for this purpose.

Installation
============

To download the development version of **useResearch**:

Download the [zip
ball](https://github.com/data-steve/useResearch/zipball/master) or
[tar
ball](https://github.com/data-steve/useResearch/tarball/master),
decompress and run `R CMD INSTALL` on it, or use the **pacman** package
to install the development version:

    if (!require("pacman")) install.packages("pacman")
    pacman::p_load_gh("data-steve/useResearch")

    ## Open package to working directory and run:
    useResearch::add_template()

    ## Follow template instructions


Contact
=======

You are welcome to: 
- submit suggestions and bug-reports at: <https://github.com/data-steve/useResearch/issues> 
- send a pull request on: <https://github.com/data-steve/useResearch/> 
- compose a friendly e-mail to: <steven.troy.simpson@gmail.com>

