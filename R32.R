
data(airquality)

mean_temperature <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature:", mean_temperature, "\n")


first_five_rows <- head(airquality, n = 5)
print("First five rows:")
print(first_five_rows)


selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("All columns except Temp and Wind:")
print(selected_columns)


coldest_day <- airquality[which.min(airquality$Temp), ]
cat("Coldest Day:")
print(coldest_day)

windy_days <- sum(airquality$Wind > 17)
cat("Number of days with wind speed > 17 mph:", windy_days, "\n")
