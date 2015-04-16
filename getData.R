getData <- function(directory = "UCI HAR Dataset") {
  # Arguments and information
  ## directory = root path for dataset
  ## Example usage: getData("UCI HAR Dataset") or getData()
  
  # Set constant variables
  featFile <- "features.txt"
  actFile <- "activity_labels.txt"
  testFile <- "test/x_test.txt"
  testLblFile <- "test/y_test.txt"
  testSubjFile <- "test/subject_test.txt"
  trainFile <- "train/x_train.txt"
  trainLblFile <- "train/y_train.txt"
  trainSubjFile <- "train/subject_train.txt"
  stdPart <- "std()"
  meanPart <- "mean()"
  lbl1 <- "ActivityId"
  lbl2 <- "Activity"
  lbl3 <- "SubjectId"
  
  
  
  # Filter labels for columns which will be loaded
  
  ## Read feature file and get column labels
  lbls <- read.table(paste(directory, featFile, sep="/"))
  names <- as.vector(t(lbls[2]))
  
  ## Read activity labels
  act_lbls <- read.table(paste(directory, actFile, sep="/"), col.names=c(lbl1, lbl2))
  
  ## Find columns that has std() or mean() function variables
  std_mean <- grepl(stdPart, names, fixed = TRUE) | grepl(meanPart, names, fixed = TRUE)
  
  ## Set class only for columns to be requested
  std_mean[std_mean] <- "numeric"
  
  ## Set other columns to NULL (those will be ignored)
  std_mean[std_mean == "FALSE"] <- "NULL"
  
  
  
  # Read data
  
  ## Read Test data and labels
  data1 <- read.table(paste(directory, testFile, sep="/"), colClasses=std_mean, col.names=names)
  data1_lbls <- read.table(paste(directory, testLblFile, sep="/"), col.names=c(lbl1))
  data1_subj <- read.table(paste(directory, testSubjFile, sep="/"), col.names=c(lbl3))
  
  ## Read Train data and labels
  data2 <- read.table(paste(directory, trainFile, sep="/"), colClasses=std_mean, col.names=names)
  data2_lbls <- read.table(paste(directory, trainLblFile, sep="/"), col.names=c(lbl1))
  data2_subj <- read.table(paste(directory, trainSubjFile, sep="/"), col.names=c(lbl3))
  
  
  
  # Combine datasets
  
  ## Join activity label names to data labels
  data1_lbls <- merge(data1_lbls, act_lbls)
  data2_lbls <- merge(data2_lbls, act_lbls)
  
  ## Join subject labels to data
  data1 <- cbind(data1, data1_subj)
  data2 <- cbind(data2, data2_subj)
  
  ## Join activity labels to data
  data1 <- cbind(data1, data1_lbls)
  data2 <- cbind(data2, data2_lbls)
  
  ## Combine datasets to one set
  data1 <- rbind(data1, data2)
  
  
  
  # Return combined dataset
  data1 
}
