
data(airquality)

airquality[is.na(airquality)] <- sapply(airquality, function(x) ifelse(sum(is.na(x)) / length(x) < 0.1, x, mean(x, na.rm = TRUE)))

model <- lm(Ozone ~ Solar.R, data = airquality)

plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Scatter Plot with Regression Line")
abline(model, col = "red")
