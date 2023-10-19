
is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  if (n == 2) return(TRUE)
  if (n %% 2 == 0) return(FALSE)
  for (i in 3:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}


find_primes_up_to_limit <- function(limit) {
  primes <- c()
  for (i in 2:limit) {
    if (is_prime(i)) {
      primes <- c(primes, i)
    }
  }
  return(primes)
}
limit <- 10 


prime_numbers <- find_primes_up_to_limit(limit)

cat("Prime numbers up to", limit, "are:\n")
cat(prime_numbers, "\n")
