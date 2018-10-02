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

x <- as.list(body(fun))
x

as.list(x[[2]])

as.list(x[[c(2, 4)]])

as.list(x[[c(2, 4, 2)]])

as.list(x[[c(2, 4, 2, 3)]])

trace(fun, browser, at = list(c(2, 4, 2, 3)))
fun()
