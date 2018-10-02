# Given this function, use `trace()` to add a `browser()` statement before the
# stop
# Hint: Use as.list(body(fun)) and [[c(1, 2, 3)]] to descend into the expression
# tree.
fun <- function() {
  for (i in 1:10000) {
    if (i == 9876)
      stop("Ohno!")
  }
}
