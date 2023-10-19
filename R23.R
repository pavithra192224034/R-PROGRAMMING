
col1 <- c(1, 2, 3)
col2 <- c(4, 5, 6)
col3 <- c(7, 8, 9)
col4 <- c(10, 11, 12)


table1 <- cbind(col1, col2)
table2 <- cbind(col3, col4)


my_array <- array(c(table1, table2), dim = c(3, 4, 2))


print(my_array)
