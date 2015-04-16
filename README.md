# Getting and Cleaning Data -Course Project
## Purpose
* This project is one of the course assignments.
* The analysis script will merge the datasets and aggregate mean from every calculated Standard Deviation and Mean variables.
* The result will be saved to file
* More information about the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Usage
1. Get the file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip it to R working directory
3. Download the script `run_analysis.R` from this repository
4. Run the script 
5. The script will write output file named `aggrageted_data.txt`

# Workflow of the script
## Set constant variables
Every variable in the script is defined at the beginning to help adjust file location etc.
```
directory <- "UCI HAR Dataset"
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
```
## Filter labels for columns which will be loaded
### Read feature file and get column labels
Labels will be loaded to vector to help filter required columns.
```
lbls <- read.table(paste(directory, featFile, sep="/"))
names <- as.vector(t(lbls[2]))
```
### Read activity labels
Activity labels will be joined to dataset later.
```
act_lbls <- read.table(paste(directory, actFile, sep="/"), col.names=c(lbl1, lbl2))
```
### Find columns that has std() or mean() function variables
Unnecessary variables will be filtered away by using function names (only Standard Deviation std() and Mean mean()). 
```
std_mean <- grepl(stdPart, names, fixed = TRUE) | grepl(meanPart, names, fixed = TRUE)
```
### Set class only for columns to be requested
Names is storage for column names which will be used later.
```
names <- names[std_mean]
std_mean[std_mean] <- "numeric"
```
### Set other columns to NULL (those will be ignored)
Unnecessary columns are marked as NULL so they will be ignored when loading data.
```
std_mean[std_mean == "FALSE"] <- "NULL"
```
## Read data
### Read Test data and labels
```
data1 <- read.table(paste(directory, testFile, sep="/"), colClasses=std_mean)
data1_lbls <- read.table(paste(directory, testLblFile, sep="/"), col.names=c(lbl1)) 
data1_subj <- read.table(paste(directory, testSubjFile, sep="/"), col.names=c(lbl3)) 
```
### Read Train data and labels
```
data2 <- read.table(paste(directory, trainFile, sep="/"), colClasses=std_mean)
data2_lbls <- read.table(paste(directory, trainLblFile, sep="/"), col.names=c(lbl1)) 
data2_subj <- read.table(paste(directory, trainSubjFile, sep="/"), col.names=c(lbl3))
```
## Combine datasets
### Join activity label names to data labels
```
data1_lbls <- merge(data1_lbls, act_lbls)
data2_lbls <- merge(data2_lbls, act_lbls)
```
### Join subject labels to data
```
data1 <- cbind(data1, data1_subj)
data2 <- cbind(data2, data2_subj)
```
### Join activity labels to data
```
data1 <- cbind(data1, data1_lbls)
data2 <- cbind(data2, data2_lbls)
```
### Combine datasets to one set
```
data1 <- rbind(data1, data2)
```
### Set column names
Names will be used to reset correct column names. Also new column names will be added to last joined columns.
```
names(data1) <- c(names, lbl3, lbl1, lbl2)
```
## Analysis
### Aggregate data
Data is grouped by SubjectId and Activity columns. Aggregation function is mean (average).
```
data_mean <- aggregate(data1[, 1:66], list(data1$SubjectId, data1$Activity), mean)
```
### Rename two first columns
Earlier statement has put `Group.1` and `Group.2` column names to grouping columns, so they will be overwritten with nicer names. 
```
names(data_mean)[1] <- "Subject"
names(data_mean)[2] <- "Activity"
```
### Write output
Output will be written to `aggregated_data.txt` file.
```
write.table(data_mean, file="aggregated_data.txt", row.name=FALSE)
```
