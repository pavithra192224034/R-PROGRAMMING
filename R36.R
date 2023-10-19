# Load the ChickWeight dataset
data(ChickWeight)

# (a) Create a Box plot for "weight" grouped by "Diet"
boxplot(ChickWeight$weight ~ ChickWeight$Diet, xlab = "Diet", ylab = "Weight",
        main = "Box Plot of Weight by Diet")

# (b) Create a Histogram for "weight" features belonging to Diet-1 category
hist(ChickWeight$weight[ChickWeight$Diet == 1], xlab = "Weight", main = "Histogram of Weight for Diet-1")

# (c) Create a Scatter plot for "weight" vs "Time" grouped by "Diet"
plot(ChickWeight$Time, ChickWeight$weight, col = ChickWeight$Diet, xlab = "Time", ylab = "Weight",
     main = "Scatter Plot of Weight vs Time by Diet")

# Add a legend for Diet categories (optional)
legend("topright", legend = unique(ChickWeight$Diet), col = 1:4, pch = 1:4, title = "Diet")

