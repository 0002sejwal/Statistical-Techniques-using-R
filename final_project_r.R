# Load necessary libraries
library(MASS)             # Load MASS for dataset
library(lattice)
library(ggplot2)          # Load ggplot2 for visualization
library(caret)            # Load caret for model evaluation


# Load the Pima Indians Diabetes Dataset
data("Pima.tr")          # Use the training set from MASS

# Check the dataset structure
trainData <- Pima.tr
str(trainData)
names(trainData)

# Perform Linear Regression Model
# Here we use 'glu' as the dependent variable
linear_model <- lm(glu ~ npreg + bp + skin + bmi + ped + age, data = trainData)

# Display model summary to interpret results
summary(linear_model)

# Calculate fitted values and residuals
fitted_values <- linear_model$fitted.values
residuals <- linear_model$residuals

# Create a data frame for ggplot
residuals_data <- data.frame(Fitted = fitted_values, Residuals = residuals)

# Plotting the residuals to check assumptions
ggplot(data = residuals_data, aes(x = Fitted, y = Residuals)) +
  geom_point() +
  geom_hline(yintercept = 0, color = "red") +
  labs(title = "Residuals vs Fitted Values", x = "Fitted Values", y = "Residuals")

# Evaluate model performance
predictions <- predict(linear_model, newdata = trainData)
model_performance <- postResample(predictions, trainData$glu)

# Print model performance metrics
print(model_performance)
