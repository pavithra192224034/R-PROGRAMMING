
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)


mean_value <- mean(values)
median_value <- median(values)
mode_value <- as.numeric(names(sort(table(values), decreasing = TRUE)[1]))


sorted_values <- sort(unique(values))
second_highest <- sorted_values[length(sorted_values) - 1]
third_lowest <- sorted_values[3]


cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
cat("2nd Highest:", second_highest, "\n")
cat("3rd Lowest:", third_lowest, "\n")
