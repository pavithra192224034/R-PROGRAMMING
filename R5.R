fibonacci <- function(n) {
  if (n <= 1) {
    return(n)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

first_10_fibonacci <- sapply(0:9, fibonacci)

cat("The first 10 Fibonacci numbers:\n")
cat(first_10_fibonacci, "\n")
