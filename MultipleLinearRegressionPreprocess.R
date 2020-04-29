source("MultipleLinearRegressionUtils.R")
multipleLinearRegressionDatasetList <- importMultipleLinearRegressionDataset("Multiple_Linear_Regression_50_Startups.csv")

saveTrainingAndTestingDataset(multipleLinearRegressionDatasetList[[1]], multipleLinearRegressionDatasetList[[2]])
