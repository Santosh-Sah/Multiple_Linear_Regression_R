source("MultipleLinearRegressionUtils.R")

#reading simple linear regression model
multipleLinearRegressionModel = readRDS("multipleLinearRegressionModel.RDS")

inputValue <- data.frame(R.D.Spend = c(165349))

#predicting testing set result.
predictedValues = predict(multipleLinearRegressionModel, newdata = inputValue)

predictedValues
