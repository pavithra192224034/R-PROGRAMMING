
values <- c(1, 2, 3, 4, 5, 6, 7, 8)


dimensions <- c(2, 2, 2)


dimnames_list <- list(
  c("Row1", "Row2"),
  c("Col1", "Col2"),
  c("Depth1", "Depth2")
)


my_array <- array(values, dim = dimensions, dimnames = dimnames_list)


print(my_array)
