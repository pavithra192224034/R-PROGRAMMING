# Load necessary libraries
library(caret)

# Set a random seed for reproducibility
set.seed(123)

# Randomly split the dataset into training (80%) and test (20%)
index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Create a logistic regression model
logistic_model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = binomial)

# Predict probabilities on the test data
test_probabilities <- predict(logistic_model, newdata = test_data, type = "response")

# Convert probabilities to predicted class
predicted_species <- ifelse(test_probabilities > 0.5, "virginica", "setosa")

# Create a confusion matrix
confusion_matrix <- table(Actual = test_data$Species, Predicted = predicted_species)
confusion_matrix
