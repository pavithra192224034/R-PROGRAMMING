
data(airquality)


is_data_frame <- is.data.frame(airquality)
cat("Is 'airquality' a data frame?", is_data_frame, "\n")


ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]


cleaned_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c('Solar.R', 'Wind'))]


print(cleaned_airquality)
