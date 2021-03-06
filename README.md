## About
This package was made in preparation for the clas INFO 550. It stores a data rda object named "trachoma_data", several functions that clean data and make figures, as well as a vignette. The tidyverse and rmarkdown packages were used to build this package. You will need to install the devtools package to download this package using the code below.

## Install
To install the package, please run the following code. This code was specifically tailored to download the vignette as well because this does not happen by default. When prompted to enter a number to continue, please enter the number that makes the most sense to you. More than likely, your tidyverse is already updated so you can enter **3** which skips this updating step.
**devtools::install_github("pahongle/tfreport", build_vignettes = TRUE)**

## Functions
There are two functions in this package. The first one is **tf_clean()**. This will clean the included **trachoma_data**. The second function is **tf_fig()**. This makes a figure based on the clean data. 

## Vignette
To see the vignette with the associated report, please run the following code after installing the package.
**vignette("trachoma_report", package="tfreport")**


