
set.seed(123)


letters_sample <- factor(sample(LETTERS, size = 20, replace = TRUE))

levels(letters_sample)


five_levels <- levels(letters_sample)[1:5]


print(five_levels)
