
data(ChickWeight)


model <- lm(weight ~ Time + Diet, data = ChickWeight)


new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)


actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]


prediction_error <- actual_weight - predicted_weight


cat("Predicted Weight for Time=10 and Diet=1:", predicted_weight, "\n")
cat("Prediction Error:", prediction_error, "\n")
