
data(ChickWeight)


ordered_data <- ChickWeight[order(ChickWeight$diet, ChickWeight$weight), ]
last_six_records <- tail(ordered_data, 6)



melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = mean)
mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux))]
)})


print("Last 6 Records:")
print(last_six_records)
print("Mean Value of Weight Grouped by Diet:")
print(mean_weight_by_diet)
print("Mode of Weight Grouped by Diet:")
print(mode_weight_by_diet)
