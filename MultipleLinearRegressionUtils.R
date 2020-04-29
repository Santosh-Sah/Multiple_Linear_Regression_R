importMultipleLinearRegressionDataset <- function(multipleLinearRegressionDatasetFileName) {
  
  #importing dataset
  multipleLinearRegressionDataset = read.csv(multipleLinearRegressionDatasetFileName)
  
  #encoding categoricalvariabls
  multipleLinearRegressionDataset$State = factor(multipleLinearRegressionDataset$State,
                                                 levels = c('New York', 'California', 'Florida'),
                                                 labels = c(1, 2, 3))
  
  #splitting the dataset into training set and testing set
  library(caTools)
  set.seed(1234)
  multipleLinearRegressionDatasetSlpit = sample.split(multipleLinearRegressionDataset$Profit, SplitRatio = 0.8)
  
  multipleLinearRegressionTrainingSet = subset(multipleLinearRegressionDataset, multipleLinearRegressionDatasetSlpit == TRUE)
  
  multipleLinearRegressionTestingSet = subset(multipleLinearRegressionDataset, multipleLinearRegressionDatasetSlpit == FALSE)
  
  
  returnList <- list(multipleLinearRegressionTrainingSet, multipleLinearRegressionTestingSet)
  
  return (returnList)
  
}

#saving training and testing set
saveTrainingAndTestingDataset <- function(multipleLinearRegressionTrainingSet, multipleLinearRegressionTestingSet){
  
  saveRDS(multipleLinearRegressionTrainingSet, file = "multipleLinearRegressionTrainingSet.RDS")
  saveRDS(multipleLinearRegressionTestingSet, file = "multipleLinearRegressionTestingSet.RDS")
  
}

#Save multipleLinearRegression Model
saveMultipleLinearRegressionModel <- function(multipleLinearRegressionModel) {
  
  saveRDS(multipleLinearRegressionModel, file = "multipleLinearRegressionModel.RDS")
}
