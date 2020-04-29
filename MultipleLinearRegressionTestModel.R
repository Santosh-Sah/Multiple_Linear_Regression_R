source("MultipleLinearRegressionUtils.R")

#reading testing set data
multipleLinearRegressionTestingSet <- readRDS("multipleLinearRegressionTestingSet.RDS")

#reading MultipleLinearRegression model
multipleLinearRegressionModel = readRDS("multipleLinearRegressionModel.RDS")

#predicting testing set result.
y_pred = predict(multipleLinearRegressionModel, newdata = multipleLinearRegressionTestingSet)

y_pred
