# Read Excel data and create a scatter plot

# install package (only first time)
install.packages("readxl")

# load package
library(readxl)

# read Excel file
data <- read_excel(file.choose(), col_names = TRUE, sheet = 1)

# view data
View(data)

# select columns
A <- data$D
B <- data$TOT_N

# create plot
plot(A, B,
     main = "TOT vs D",
     xlab = "D (Km)",
     ylab = "TOT (Num)")
