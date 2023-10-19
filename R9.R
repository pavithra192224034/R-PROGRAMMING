
number <- 24

factors <- 1:number
factors <- factors[number %% factors == 0]

cat("Factors of", number, "are:\n")
cat(factors, "\n")
