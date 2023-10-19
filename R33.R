# Load the reshape2 library
library(reshape2)

# Load the airquality dataset
data(airquality)
summary_stats <- summary(airquality)
print("Summary Statistics of air quality dataset:")
print(summary_stats)


melted_data <- melt(airquality)
print("Melted Data (Long Format):")
print(melted_data)


melted_data_with_id <- melt(airquality, id.vars = c("Month", "Day"))
print("Melted Data with ID Variables:")
print(melted_data_with_id)


casted_data <- dcast(melted_data_with_id, Month + Day ~ variable)
print("Casted Data:")
print(casted_data)

average_data <- dcast(melted_data, Month ~ variable, fun.aggregate = mean)
print("Average Data per Month:")
print(average_data)
