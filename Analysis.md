# Data Analysis

This file contains data analysis performed on the maternal health dataset to examine relationships between maternal risk levels, blood sugar, systolic blood pressure, and age.

## 1. Box Plot Analysis
**Goal**: Explore the distribution of blood sugar levels across maternal risk levels.

**Steps**:
- Created a factor variable `RiskLevel` with ordered levels: "low risk", "mid risk", "high risk".
- Generated a frequency table of blood sugar levels (`BS`) by `RiskLevel`.
- Calculated row and column proportions to understand the distribution.
- Visualized the distribution using a bar plot.

<p align="center">
  <img src="https://github.com/user-attachments/assets/blood_sugar_barplot.png" width="500"/>
</p>

**Key Observations**:
- Low risk is associated with high blood sugar, but at lower frequency.
- Medium risk is associated with low blood sugar at a medium frequency.
- High risk is associated with both high frequency and high blood sugar.
- Suggests that blood sugar is strongly related only to the high-risk group.

## 2. Boxplot Analysis
**Goal**: Compare systolic blood pressure across maternal risk levels.

**Steps**:
- Used the same `RiskLevel` factor.
- Generated side-by-side boxplots for `SystolicBP` by `RiskLevel`.

<p align="center">
  <img src="https://github.com/user-attachments/assets/systolic_bp_boxplot.png" width="500"/>
</p>

**Key Observations**:
- Maximum systolic blood pressure for low and medium risk groups are similar.
- High risk group shows a much higher maximum.
- Indicates a positive relationship between high blood pressure and maternal risk.

## 3. Regression Analysis
**Goal**: Examine whether age predicts systolic blood pressure.

**Steps**:
- Performed a linear regression with `SystolicBP` as the response variable and `Age` as the predictor.

<p align="center">
  <img src="https://github.com/user-attachments/assets/age_bp_regression.png" width="500"/>
</p>

**Results**:
- **Intercept (B₀)**: 96.22, p < 0.05  
- **Slope (B₁)**: 0.568, p < 0.05  
- **R-squared**: 0.1731  
- **F-test p-value**: < 2.2e-16  

**Interpretation**:
- Age has a statistically significant positive relationship with systolic blood pressure.
- Only ~17% of the variability in systolic blood pressure is explained by age, indicating other factors also contribute.

## Summary

| Analysis Type        | Variable(s) Analyzed                 | Key Finding                                                       |
|----------------------|--------------------------------------|------------------------------------------------------------------|
| Descriptive Stats    | Blood Sugar vs. Risk Level           | High blood sugar linked to high-risk group only.                 |
| Boxplot Analysis     | Systolic BP vs. Risk Level           | High risk group shows much higher systolic BP.                   |
| Regression           | Systolic BP vs. Age                  | Statistically significant positive relationship, moderate R².     |

## Notes
- Additional analysis could examine maternal risk in relation to other factors such as BMI or lifestyle.
- Future work may include multivariate regression or logistic regression to explore combined effects on maternal health.
