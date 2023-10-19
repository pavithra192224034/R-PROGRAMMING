
matrix_rows <- matrix(1:20, nrow = 5, byrow = TRUE, dimnames = list(paste0("Row", 1:5), c("A", "B", "C", "D")))

matrix_labels_rows <- matrix(letters[1:9], nrow = 3, byrow = TRUE, dimnames = list(paste0("Row", 1:3), c("X", "Y", "Z")))


matrix_labels_columns <- matrix(letters[1:4], ncol = 2, dimnames = list(NULL, c("X", "Y")))


print(matrix_rows)
print(matrix_labels_rows)
print(matrix_labels_columns)
