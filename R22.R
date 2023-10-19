
array1 <- matrix(1:4, nrow = 2)
array2 <- matrix(5:8, nrow = 2)
array3 <- matrix(9:12, nrow = 2)


combined_array <- rbind(array1[1, , drop = FALSE], array2[1, , drop = FALSE], array3[1, , drop = FALSE])


print(combined_array)
