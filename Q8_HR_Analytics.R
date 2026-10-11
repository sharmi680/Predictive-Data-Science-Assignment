
# Aim: Predict the demand for hourly employees

# Step 1: Create sample HR data
hr_data <- data.frame(
  Month = 1:6,
  Employees = c(20, 22, 25, 27, 30, 32)
)

# Step 2: Display the dataset
cat("Historical HR Data:\n")
print(hr_data)

# Step 3: Build a Linear Regression model
model <- lm(Employees ~ Month, data = hr_data)

# Step 4: Predict employee demand for next month
next_month <- data.frame(Month = 7)

predicted_demand <- predict(model, newdata = next_month)

# Step 5: Display the prediction
cat("\nNext Month:", next_month$Month, "\n")
cat("Predicted Employee Demand:",
    round(predicted_demand), "\n")

cat("\nResult: HR demand prediction completed.\n")