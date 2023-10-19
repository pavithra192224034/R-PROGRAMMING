
data(Titanic)


barplot(Titanic, beside = TRUE, col = c("red", "green"),
        legend = c("No", "Yes"), main = "Survival on the Titanic by Passenger Class")


barplot(Titanic, beside = TRUE, col = c("red", "green"),
        legend = c("No", "Yes"), beside = TRUE, main = "Survival on the Titanic by Passenger Class and Gender")


hist(Titanic$Age, breaks = 10, col = "blue", xlab = "Age", main = "Distribution of Age on the Titanic")
