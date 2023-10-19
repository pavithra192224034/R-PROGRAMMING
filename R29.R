# Load the Iris dataset
data(iris)

# (i) Dimension, Structure, Summary statistics, Standard Deviation
dim(iris)
str(iris)
summary(iris)
sapply(iris[, 1:4], sd)

# (ii) Mean and standard deviation by species
by_species <- aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = function(x) c(Mean = mean(x), SD = sd(x)))

# (iii) Quantile values of sepal width and length
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)

# (iv) Create a new data frame with categorized Sepal.Length
iris$Sepal.Length.Cate <- cut(iris$Sepal.Length, quantile(iris$Sepal.Length), labels = c("Low", "Medium", "High"))

# (v) Average values by species and Sepal.Length.Cate
by_species_cate <- aggregate(iris[, 1:4], by = list(Species = iris$Species, Sepal.Length.Cate = iris$Sepal.Length.Cate), FUN = mean)

# (vi) Average mean values by species and Sepal.Length.Cate
by_species_cate_avg <- aggregate(by_species_cate[, 3:6], by = list(Species = by_species_cate$Species, Sepal.Length.Cate = by_species_cate$Sepal.Length.Cate), FUN = mean)

# (vii) Pivot Table
library(dplyr)
iris_pivot <- iris %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise_all(mean)
