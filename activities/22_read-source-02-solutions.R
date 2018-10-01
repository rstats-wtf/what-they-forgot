# How does readr::read_lines work?
readr::read_lines
#> function (file, skip = 0, n_max = -1L, locale = default_locale(),
#>     na = character(), progress = show_progress())
#> {
#>     if (empty_file(file)) {
#>         return(character())
#>     }
#>     ds <- datasource(file, skip = skip)
#>     read_lines_(ds, locale_ = locale, na = na, n_max = n_max,
#>         progress = progress)
#> }
readr:::read_lines_
#> function (sourceSpec, locale_, na, n_max = -1L, progress = TRUE)
#> {
#>     .Call("readr_read_lines_", PACKAGE = "readr", sourceSpec,
#>         locale_, na, n_max, progress)
#> }

repo:tidyverse/repo read_lines_ language:c

# How does rlang::quo work?

rlang::quo
#> function(expr) {
#>   enquo(expr)
#> }

rlang::enquo
#> function(arg) {
#>   .Call(rlang_enquo, substitute(arg), parent.frame())
#> }

repo:r-lib/rlang rlang_enquo

# Where is the development source for the 'Window Function' dplyr vignette?

browseVignettes("window", package = "dplyr")

vignette("window-functions", package = "dplyr")

org:tidyverse "aggregate functions, like cumsum() and cummean"

# Found a typo in ?ggplot2::geom_histogram, what code needs to change?
org:tidyverse "bars; frequency polygons"
