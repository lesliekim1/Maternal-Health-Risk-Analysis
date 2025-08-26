# Maternal Health Risk Analysis

## Project Overview
This R project analyzes a dataset on maternal health risks collected from hospitals, clinics, and maternal health cares from rural areas of Bangladesh. The dataset includes indicators such as maternal age, blood glucose, blood pressure, and heart rate. The goal is to identify significant factors associated with maternal health risk and understand the potential impact of blood glucose levels, systolic blood pressure, and age.

## Dataset
- **Source**: [Maternal Health Risk - UCI Dataset](https://archive.ics.uci.edu/dataset/863/maternal+health+risk)
- **Variables** include:
  - Age
  - SystolicBP
  - Gender
  - DiastolicBP
  - Risk Level
  - BS (blood glucose)

## Data Processing Overview
1. **Data Import & Preparation**
   - The CSV file is imported into R.
   - Risk level variable is recoded and the dataset is organized by maternal health risk levels.

2. **Bar Plot Analysis**
   - Bar plot created to show blood sugar levels by maternal risk level.
   - Comparison highlights differences in low, medium, and high-risk groups.

3. **Side-by-Side Boxplots Analysis**
   - Boxplots created to compare systolic blood pressure across risk levels.
   - Distribution examined to identify patterns among low, medium, and high-risk groups.

4. **Regression Analysis**
   - Linear regression performed with systolic blood pressure as the response and age as the predictor.
   - Model significance and explanatory power assessed using p-values, R², and F-test.

[View full analysis in Analysis.md](https://github.com/lesliekim1/Maternal-Health-Risk-Analysis/blob/main/Analysis.md)

## How to Run
1. **Install R** or use RStudio.
2. **Download the dataset** from the UCI Machine Learning Repository and save the CSV file in an accessible directory.
3. **Open the provided `.R` file** in R.
4. **Update the `read.csv()` path** to match the location of your CSV file:
```r
maternal <- read.csv("your\\path\\to\\Maternal Health Risk Data Set.csv")
```
## References
- [Maternal Risk Factors | Texas DSHS](https://www.dshs.texas.gov/maternal-child-health/programs-activities-maternal-child-health/hear-her-texas/maternal-risk-factors)
- [World Health Organization - Maternal Mortality](https://www.who.int/news-room/fact-sheets/detail/maternal-mortality)
- [CDC - High Blood Pressure During Pregnancy](https://www.cdc.gov/high-blood-pressure/about/high-blood-pressure-during-pregnancy.html#:~:text=Complications%20from%20high%20blood%20pressure,the%20wall%20of%20the%20uterus)
