print(mtcars, print.gap = -1)
#> Error in print.default(m, ..., quote = quote, right = right) :
#>  'gap' must be non-negative integer

# Where is this error occurring in the R source?

repo:wch/r-source "'gap' must be non-negative integer"

# What about if you are using translated error messages?
# Hint: Look at msgid in .po file, then search for that

Sys.setenv("LANG"="es")
print(mtcars, print.gap = -1)
#> Error in print.default(m, ..., quote = quote, right = right) :
#>   'gap' debe ser un entero no negativo

repo:wch/r-source "'gap' debe ser un entero no negativo"

repo:wch/r-source "'gap' must be non-negative integer"

# When was the `trimws` function added to base R?
# Hint: try restricting search to only commit messages

repo:wch/r-source trimws

# How does `is.na()` work?
# Hint: Need to look in names.c to find name of the internal function
is.na
#> function (x)  .Primitive("is.na")

repo:wch/r-source "is na" filename:names.c

repo:wch/r-source "do_isna" language:c
