# Load the USArrests dataset
data(USArrests)

# (i) Explore the summary of the dataset
summary_data <- summary(USArrests)
print("Summary of the Dataset:")
print(summary_data)

# Find the state with the largest total number of rape
max_rape_state <- USArrests[which.max(USArrests$Rape), ]
cat("State with the Largest Total Rape:", rownames(max_rape_state), "\n")

# Find states with the max and min crime rates for murder
max_murder_state <- USArrests[which.max(USArrests$Murder), ]
min_murder_state <- USArrests[which.min(USArrests$Murder), ]
cat("State with the Max Murder Rate:", rownames(max_murder_state), "\n")
cat("State with the Min Murder Rate:", rownames(min_murder_state), "\n")

# (ii) Find the correlation among the features
correlation_matrix <- cor(USArrests)
print("Correlation Matrix:")
print(correlation_matrix)

# Find states with assault arrests more than the median of the country
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with Assault Arrests Above Median:", paste(states_above_median_assault, collapse = ", "), "\n")

# Find states in the bottom 25% of murder
bottom_25_percent_murder <- quantile(USArrests$Murder, 0.25)
states_bottom_25_percent_murder <- rownames(USArrests)[USArrests$Murder < bottom_25_percent_murder]
cat("States in the Bottom 25% of Murder Rate:", paste(states_bottom_25_percent_murder, collapse = ", "), "\n")

# (iii-a) Create a histogram of murder arrests by US state
hist(USArrests$Murder, main = "Histogram of Murder Arrests")

# (iii-b) Create a scatter plot showing the relationship between murder arrest rate and the proportion of the population that is urbanized
plot(USArrests$UrbanPop, USArrests$Murder, col = USArrests$Assault, pch = 19,
     main = "Murder Arrest Rate vs. Urban Population", xlab = "Urban Population", ylab = "Murder Arrests")

# (iii-c) Create a bar graph to show the murder rate for each of the 50 states
barplot(USArrests$Murder, names.arg = rownames(USArrests), col = "blue", las = 2, main = "Murder Rate by US State")
