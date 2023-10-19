data <- data.frame(
  Name = c("Adi", "harish", "sunil"),
  Age = c(28, 69, 35)
)

size_in_bytes <- object.size(data)
cat("Size of 'data' object in memory:", size_in_bytes, "bytes\n")

cat("Summary of the 'data' object:\n")
str(data)