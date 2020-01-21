#
# Getting and Cleaning Data Assignment - Daniel Parsons
#
# The purpose of this project is to demonstrate your ability to collect, work with, and clean 
# a data set. The goal is to prepare tidy data that can be used for later analysis. You will be 
# graded by your peers on a series of yes/no questions related to the project. You will be 
# required to submit: 
#
# 1) a tidy data set as described below, 
# 2) a link to a Github repository with
# your script for performing the analysis, and 
# 3) a code book that describes the variables, the data, and any transformations or work that 
#   you performed to clean up the data called CodeBook.md. 
# 
# You should also include a README.md in the repo with your scripts. 
# This repo explains how all of the scripts work and how they are connected.
#
#
# You should create one R script called run_analysis.R that does the following:
# 
# 1. Merges the training and the test sets to create one data set.
#
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#
# 3. Uses descriptive activity names to name the activities in the data set
#
# 4. Appropriately labels the data set with descriptive variable names.
#
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.
#
#


### Libraries

library(dplyr)



### Read in test data 

setwd("U:/03 Professional Development/09 R Programming/03 Coursera/03 Getting and Cleaning Data/Week4/UCI HAR Dataset/test")
testdata <- read.table("x_test.txt")
testcat <- read.table("y_test.txt")

### Read in training data 

setwd("U:/03 Professional Development/09 R Programming/03 Coursera/03 Getting and Cleaning Data/Week4/UCI HAR Dataset/train")
traindata <- read.table("X_train.txt")
traincat <- read.table("y_train.txt")


### Read in column names

setwd("U:/03 Professional Development/09 R Programming/03 Coursera/03 Getting and Cleaning Data/Week4/UCI HAR Dataset")

datanames <- read.table("features.txt")
datanames <- datanames[2]
datanames <- sapply(datanames, as.character)

### Combine test and training data
data <- rbind(testdata, traindata)


### Assign column names to data set

names(data) <- datanames


### Find mean and standard deviation

test1 <- grep("mean" , datanames1)
test2 <- grep("std", datanames1)

test3 <- c(test1, test2)
test3 <- sort(test3)
test3 <- data[test3]


### Labeling activity names
set1 <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")


testcat1 <- sapply(testcat, as.character)

testcat1 <- sapply(testcat1, function(x) gsub("5", "STANDING", as.character(x)))
testcat1 <- sapply(testcat1, function(x) gsub("6", "LAYING", as.character(x)))
testcat1 <- sapply(testcat1, function(x) gsub("4", "SITTING", as.character(x)))
testcat1 <- sapply(testcat1, function(x) gsub("3", "WALKING_DOWNSTAIRS", as.character(x)))
testcat1 <- sapply(testcat1, function(x) gsub("2", "WALKING_UPSTAIRS", as.character(x)))
testcat1 <- sapply(testcat1, function(x) gsub("1", "WALKING", as.character(x)))

testcat1 <- as.data.frame(testcat1)
names(testcat1) <- "activity"


traincat1 <- sapply(traincat, as.character)

traincat1 <- sapply(traincat1, function(x) gsub("5", "STANDING", as.character(x)))
traincat1 <- sapply(traincat1, function(x) gsub("6", "LAYING", as.character(x)))
traincat1 <- sapply(traincat1, function(x) gsub("4", "SITTING", as.character(x)))
traincat1 <- sapply(traincat1, function(x) gsub("3", "WALKING_DOWNSTAIRS", as.character(x)))
traincat1 <- sapply(traincat1, function(x) gsub("2", "WALKING_UPSTAIRS", as.character(x)))
traincat1 <- sapply(traincat1, function(x) gsub("1", "WALKING", as.character(x)))

traincat1 <- as.data.frame(traincat1)
names(traincat1) <- "activity"


### Combine activity labels and data

data1 <- cbind(activity, test3)

data2 <- split(data1, data1$activity)


### Create independent table

g1 <- colMeans(data2$LAYING[2:80])
g2 <- colMeans(data2$SITTING[2:80])
g3 <- colMeans(data2$STANDING[2:80])
g4 <- colMeans(data2$WALKING[2:80])
g5 <- colMeans(data2$WALKING_DOWNSTAIRS[2:80])
g6 <- colMeans(data2$WALKING_UPSTAIRS[2:80])


data2 <- rbind(g1, g2, g3,g4 , g5, g6)
`rownames<-`(data2, set1)
