
set.seed(123)
n <- 2
random_numbers <- rnorm(n)


value_counts <- table(random_numbers)


cat("List of random numbers:\n")
print(random_numbers)


cat("\nValue Counts:\n")
print(value_counts)
