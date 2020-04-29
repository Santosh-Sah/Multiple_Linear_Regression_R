source("MultipleLinearRegressionUtils.R")

#reading simple linear regression model
multipleLinearRegressionModel = readRDS("multipleLinearRegressionModel.RDS")


summary(multipleLinearRegressionModel)

# Call:
#   lm(formula = Profit ~ R.D.Spend, data = multipleLinearRegressionTrainingSet)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max
# -19300.3  -5005.3   -700.6   4407.3  15994.0
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept) 5.048e+04  2.386e+03   21.15   <2e-16 ***
#   R.D.Spend   8.456e-01  2.687e-02   31.47   <2e-16 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 7879 on 38 degrees of freedom
# Multiple R-squared:  0.963,     Adjusted R-squared:  0.9621
# F-statistic: 990.2 on 1 and 38 DF,  p-value: < 2.2e-16