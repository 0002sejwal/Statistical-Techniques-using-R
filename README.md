# Statistical-Techniques-using-R
Diabetes Progression Prediction Using Regression Analysis in R

# Diabetes Prediction Using Linear Regression

## Overview
This project aims to explore the relationship between various health metrics and the likelihood of diabetes using linear regression analysis. The analysis is performed on the Pima Indians Diabetes dataset, which contains several independent variables (such as age, BMI, blood pressure) that may influence the dependent variable indicating the number of pregnancies.

## Dataset
The dataset used in this project is the **Pima Indians Diabetes Database**, which consists of 768 samples with 8 attributes. The attributes include:
- **npreg**: Number of pregnancies
- **glu**: Plasma glucose concentration a 2 hours in an oral glucose tolerance test
- **bp**: Diastolic blood pressure (mm Hg)
- **skin**: Triceps skin fold thickness (mm)
- **bmi**: Body mass index (weight in kg/(height in m)^2)
- **ped**: Diabetes pedigree function
- **age**: Age (years)
- **type**: Class variable (1 if diabetes, 0 otherwise)

## Objectives
- To fit a linear regression model to predict glucose levels based on other health metrics.
- To evaluate the performance of the model using metrics like RMSE, R-squared, and MAE.
- To visualize residuals and analyze the model's assumptions.

## Technologies Used
- R programming language
- R libraries: `ggplot2`, `caret`, and `MASS`

## Installation
To run the code, ensure that you have R installed on your system. You can install the required packages using the following commands in your R console:
```R
install.packages("ggplot2")
install.packages("caret")
