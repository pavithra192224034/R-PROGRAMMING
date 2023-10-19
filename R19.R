
vector_example <- c(1, 2, 3, 4, 5)

matrix_example <- matrix(1:9, nrow = 3, ncol = 3)

custom_function <- function(x) {
  return(x^2)
}


my_list <- list(
  vector = vector_example,
  matrix = matrix_example,
  custom_function = custom_function
)


print(my_list)
