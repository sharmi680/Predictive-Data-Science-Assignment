
# Aim: Breast Cancer Prediction using Logistic Regression
data <- data.frame(
  Radius = c(10, 12, 14, 16, 18, 20, 22, 24, 15, 19, 21, 13),
  Texture = c(12, 14, 16, 18, 20, 22, 24, 26, 17, 21, 23, 15),
  Diagnosis = c(0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0))
print(data)
model <- glm(
  Diagnosis ~ Radius + Texture,
  data = data,
  family = binomial)
new_patient <- data.frame(
  Radius = 19,
  Texture = 21)
probability <- predict(
  model,
  newdata = new_patient,
  type = "response"
)
cat("\nPredicted probability:",
    round(probability, 3), "\n")

if (probability >= 0.5) {
  cat("Prediction: Malignant\n")
} else {
  cat("Prediction: Benign\n")
}

cat("\nResult: Logistic Regression prediction completed.\n")
