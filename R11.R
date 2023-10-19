
input_string <- "abracadabra"

unique_chars <- unique(strsplit(input_string, NULL)[[1]])
cat("Unique characters in the string:", unique_chars, "\n")

input_vector <- c(1, 2, 2, 3, 4, 4, 4, 5)

unique_numbers <- unique(input_vector)
cat("Unique numbers in the vector:", unique_numbers, "\n")
