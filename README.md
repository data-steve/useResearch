
<a href='http://www.freepik.com/free-vector/male-and-female-avatars_766955.htm'>Designed by Freepik</a>

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


Example
=======


Step 1. Set up a Google Form with a single text box (see `browseURL('https://goo.gl/jmHuLO')`)

Step 2. Get the url from the form via:

    googleformer::make_url('https://docs.google.com/forms/d/1tz2RPftOLRCQrGSvgJTRELrd9sdIrSZ_kxfoFdHiqD4/viewform?usp=send_form')

Step 3. Assign the url to the object `url` below:

    .ping <- useResearch::gformr('INSERT GOOGLE FORM URL HERE')


Step 4. Add tracking to the functions you desire in the space below using the `pingr`
   function.  Remember to reassign the function back to itself as in the example.

**Attention**: We encourage the developer to add tracking responsibly, not simply out of
   curiosity but rather with a desire to help your users benefit; and not on functions
   haphazardly but rather only on those functions the developer already has questions
   of where/how to invest their time.


Note: If you wish to add a batch of functions you can batch add them via the
      `batch_process` function.  Simply use:

    useResearch::batch_process(url = url, "myfun_1", "myfun_2", "myfun_n")

The contents will be printed to the console and attempted to be copied
to your clipboard for easy pasting.

    myfun_1 <- useResearch::pingr(myfun_1)   # Replace this function assignment with your own
    myfun_2 <- useResearch::pingr(myfun_2)   # Replace this function assignment with your own


Step 5. Add the `useResearch` package to the Imports field of the 'DESCRIPTION' file.

Step 6. Adjust documentation if needed (We use `devtools::document` and DO NOT need to adjust)

Step 7. Push to GitHub, Build, or place in a repo.  Each time a useResearch-ed
   function is used by a user the form will receive a response with the
   function name used and a time stamp.


***Stop/Alter User Monitoring***

You can stop monitoring or change function monitoring by following these 3 steps:
- altering, removing this file from the package, or adding `zzz_useResearch.R` to the '.Rbuildignore' file;
- removing `useResearch` from the Imports field in the 'DESCRIPTION' file (If you want to stop monitoring); and then
- rebuilding/pushing to the hosting repo

Google Forms can also be turned off to stop receiving responses.


Contact
=======

You are welcome to: 
- submit suggestions and bug-reports at: <https://github.com/data-steve/useResearch/issues> 
- send a pull request on: <https://github.com/data-steve/useResearch/> 
- compose a friendly e-mail to: <steven.troy.simpson@gmail.com>

