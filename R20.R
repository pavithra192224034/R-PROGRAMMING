
plot.new()


xlim <- c(0, 10)
ylim <- c(0, 20)


axis(1, at = seq(xlim[1], xlim[2], by = 2))
axis(2, at = seq(ylim[1], ylim[2], by = 5))
title(xlab = "X-axis", ylab = "Y-axis")


title(main = "Empty Plot with Axes Limits")
