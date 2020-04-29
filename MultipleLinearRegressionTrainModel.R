source("MultipleLinearRegressionUtils.R")

#reading training set 
multipleLinearRegressionTrainingSet <- readRDS("multipleLinearRegressionTrainingSet.RDS")

# Fitting MultipleLinearRegression to the Training set
# multipleLinearRegression1 = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State
#                                , data = multipleLinearRegressionTrainingSet)




#summary(multipleLinearRegression1)
# Call:
#   lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend +
#        State, data = multipleLinearRegressionTrainingSet)
# 
# Residuals:
#   Min     1Q Median     3Q    Max
# -17380  -5011  -1161   5499  15980
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)      4.998e+04  6.819e+03   7.330 1.71e-08 ***
#   R.D.Spend        7.947e-01  4.215e-02  18.855  < 2e-16 ***
#   Administration  -1.518e-02  5.083e-02  -0.299   0.7671
# Marketing.Spend  2.749e-02  1.527e-02   1.801   0.0806 .
# State2           1.253e+03  3.115e+03   0.402   0.6901
# State3           8.865e+00  3.170e+03   0.003   0.9978
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 7850 on 34 degrees of freedom
# Multiple R-squared:  0.9672,    Adjusted R-squared:  0.9623
# F-statistic: 200.4 on 5 and 34 DF,  p-value: < 2.2e-16

#if we observe the p-values of the different variable then we can figure out the state dummby variale hava very high p-values.
#Hence these variables are not statisitically signinficance.
#remove state variable as both dummy varibales have high p-value.



# Fitting MultipleLinearRegression to the Training set without state variable
# multipleLinearRegression2 = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend
#                                , data = multipleLinearRegressionTrainingSet)



#summary(multipleLinearRegression2)
# Call:
#   lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
#      data = multipleLinearRegressionTrainingSet)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max
# -17724.5  -5349.9   -920.6   5993.4  15465.1
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)      5.060e+04  6.289e+03   8.046 1.47e-09 ***
#   R.D.Spend        7.945e-01  4.026e-02  19.731  < 2e-16 ***
#   Administration  -1.602e-02  4.943e-02  -0.324   0.7477
# Marketing.Spend  2.706e-02  1.430e-02   1.892   0.0665 .
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 7653 on 36 degrees of freedom
# Multiple R-squared:  0.967,     Adjusted R-squared:  0.9642
# F-statistic: 351.2 on 3 and 36 DF,  p-value: < 2.2e-16



#if we observe the p-values Administration variale has very high p-values.
#Hence this variables are not statisitically signinficance.
#remove administation variable.



# Fitting MultipleLinearRegression to the Training set without administration variable
# multipleLinearRegression3 = lm(formula = Profit ~ R.D.Spend + Marketing.Spend
#                                , data = multipleLinearRegressionTrainingSet)


#summary(multipleLinearRegression3)
# Call:
#   lm(formula = Profit ~ R.D.Spend + Marketing.Spend, data = multipleLinearRegressionTrainingSet)
# 
# Residuals:
#   Min     1Q Median     3Q    Max
# -18116  -5102  -1192   5464  15353
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)     4.873e+04  2.441e+03  19.964   <2e-16 ***
#   R.D.Spend       7.899e-01  3.730e-02  21.177   <2e-16 ***
#   Marketing.Spend 2.823e-02  1.366e-02   2.066   0.0458 *
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 7560 on 37 degrees of freedom
# Multiple R-squared:  0.9669,    Adjusted R-squared:  0.9651
# F-statistic: 539.8 on 2 and 37 DF,  p-value: < 2.2e-16


#if we observe the p-values Marketing.Spend variale has very high p-values.
#Hence this variables are not statisitically signinficance.
#remove marketing.spend variable.

# Fitting MultipleLinearRegression to the Training set without administration variable
multipleLinearRegression4 = lm(formula = Profit ~ R.D.Spend
                               , data = multipleLinearRegressionTrainingSet)

#saving linear regression model
saveMultipleLinearRegressionModel(multipleLinearRegression4)
