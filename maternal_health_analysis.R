# Import the dataset
# maternal <- read.csv("____")

# Bar Plot of Blood Sugar Levels by Risk Level
RiskLevel <- factor(maternal$RiskLevel, levels = c("low risk", "mid risk", "high risk"), ordered = TRUE)
maternal_data <- table(RiskLevel, maternal$BS)
maternal_data

margin.table(maternal_data, margin = 1)
margin.table(maternal_data, margin = 2)
addmargins(maternal_data)

# Proportions
maternal_prop <- prop.table(maternal_data, margin = 2)
maternal_prop

# Bar plot
barplot(maternal_prop,
        col = c("forestgreen", "gold", "red4"),
        xlab = "Maternal Risk Frequency",
        ylab = "Blood Sugar Level",
        main = "Distribution of Blood Sugar by Risk Level",
        ylim = c(0, 1.2),
        beside = TRUE,
        legend.text = TRUE)

# Side-by-Side Boxplots of Systolic Blood Pressure across Risk Levels
boxplot(SystolicBP ~ RiskLevel,
        data = maternal,
        xlab = "Risk Level",
        ylab = "Systolic Blood Pressure",
        main = "Boxplot of Systolic Blood Pressure by Risk Level",
        col = c("forestgreen", "gold", "red4"))

# Linear Regression Summary Table for Age vs Systolic Blood Pressure
maternal_reg <- lm(SystolicBP ~ Age, data = maternal)
summary(maternal_reg)
