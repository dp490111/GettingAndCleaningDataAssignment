run_analysis.R Codebook		Daniel Parsons

Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files:

README.txt <- This file provided the information needed to identify the data structure.

activity_labels.txt <- This file provided the index for the activity categories. 

features.txt <- This file provided the names of all the variables. 

X_test.txt  <- This file provided the test data.

y_test.txt <- This file provided the activity category for each row in X_test.txt

X_train.txt  <- This file provided the train data.

y_train.txt <- This file provided the activity category for each row in X_train.txt


Data manipulation:

Each data set was read in seperately as a data table.

Test data and train data were combinded into one table.

The names pulled from the feature.txt was used to create a names vector. This vector was assinged to the names for the combined data table.

The columns containing "mean" or "std" were selected by creating a subset of the combined table. 

A combination of sapply and gsub was used to label the activities for each row. Then a column bind with the narrow data table.

An independent table was used by splitting the tidy dataset by activity. Col means were calculated for each numerical column. 



Variable names:
Each variable is the column average for the variable.


     [,1]                              [,2]     
 [1,] "activity"                        "factor" 
 [2,] "tBodyAcc-mean()-X"               "numeric"
 [3,] "tBodyAcc-mean()-Y"               "numeric"
 [4,] "tBodyAcc-mean()-Z"               "numeric"
 [5,] "tBodyAcc-std()-X"                "numeric"
 [6,] "tBodyAcc-std()-Y"                "numeric"
 [7,] "tBodyAcc-std()-Z"                "numeric"
 [8,] "tGravityAcc-mean()-X"            "numeric"
 [9,] "tGravityAcc-mean()-Y"            "numeric"
[10,] "tGravityAcc-mean()-Z"            "numeric"
[11,] "tGravityAcc-std()-X"             "numeric"
[12,] "tGravityAcc-std()-Y"             "numeric"
[13,] "tGravityAcc-std()-Z"             "numeric"
[14,] "tBodyAccJerk-mean()-X"           "numeric"
[15,] "tBodyAccJerk-mean()-Y"           "numeric"
[16,] "tBodyAccJerk-mean()-Z"           "numeric"
[17,] "tBodyAccJerk-std()-X"            "numeric"
[18,] "tBodyAccJerk-std()-Y"            "numeric"
[19,] "tBodyAccJerk-std()-Z"            "numeric"
[20,] "tBodyGyro-mean()-X"              "numeric"
[21,] "tBodyGyro-mean()-Y"              "numeric"
[22,] "tBodyGyro-mean()-Z"              "numeric"
[23,] "tBodyGyro-std()-X"               "numeric"
[24,] "tBodyGyro-std()-Y"               "numeric"
[25,] "tBodyGyro-std()-Z"               "numeric"
[26,] "tBodyGyroJerk-mean()-X"          "numeric"
[27,] "tBodyGyroJerk-mean()-Y"          "numeric"
[28,] "tBodyGyroJerk-mean()-Z"          "numeric"
[29,] "tBodyGyroJerk-std()-X"           "numeric"
[30,] "tBodyGyroJerk-std()-Y"           "numeric"
[31,] "tBodyGyroJerk-std()-Z"           "numeric"
[32,] "tBodyAccMag-mean()"              "numeric"
[33,] "tBodyAccMag-std()"               "numeric"
[34,] "tGravityAccMag-mean()"           "numeric"
[35,] "tGravityAccMag-std()"            "numeric"
[36,] "tBodyAccJerkMag-mean()"          "numeric"
[37,] "tBodyAccJerkMag-std()"           "numeric"
[38,] "tBodyGyroMag-mean()"             "numeric"
[39,] "tBodyGyroMag-std()"              "numeric"
[40,] "tBodyGyroJerkMag-mean()"         "numeric"
[41,] "tBodyGyroJerkMag-std()"          "numeric"
[42,] "fBodyAcc-mean()-X"               "numeric"
[43,] "fBodyAcc-mean()-Y"               "numeric"
[44,] "fBodyAcc-mean()-Z"               "numeric"
[45,] "fBodyAcc-std()-X"                "numeric"
[46,] "fBodyAcc-std()-Y"                "numeric"
[47,] "fBodyAcc-std()-Z"                "numeric"
[48,] "fBodyAcc-meanFreq()-X"           "numeric"
[49,] "fBodyAcc-meanFreq()-Y"           "numeric"
[50,] "fBodyAcc-meanFreq()-Z"           "numeric"
[51,] "fBodyAccJerk-mean()-X"           "numeric"
[52,] "fBodyAccJerk-mean()-Y"           "numeric"
[53,] "fBodyAccJerk-mean()-Z"           "numeric"
[54,] "fBodyAccJerk-std()-X"            "numeric"
[55,] "fBodyAccJerk-std()-Y"            "numeric"
[56,] "fBodyAccJerk-std()-Z"            "numeric"
[57,] "fBodyAccJerk-meanFreq()-X"       "numeric"
[58,] "fBodyAccJerk-meanFreq()-Y"       "numeric"
[59,] "fBodyAccJerk-meanFreq()-Z"       "numeric"
[60,] "fBodyGyro-mean()-X"              "numeric"
[61,] "fBodyGyro-mean()-Y"              "numeric"
[62,] "fBodyGyro-mean()-Z"              "numeric"
[63,] "fBodyGyro-std()-X"               "numeric"
[64,] "fBodyGyro-std()-Y"               "numeric"
[65,] "fBodyGyro-std()-Z"               "numeric"
[66,] "fBodyGyro-meanFreq()-X"          "numeric"
[67,] "fBodyGyro-meanFreq()-Y"          "numeric"
[68,] "fBodyGyro-meanFreq()-Z"          "numeric"
[69,] "fBodyAccMag-mean()"              "numeric"
[70,] "fBodyAccMag-std()"               "numeric"
[71,] "fBodyAccMag-meanFreq()"          "numeric"
[72,] "fBodyBodyAccJerkMag-mean()"      "numeric"
[73,] "fBodyBodyAccJerkMag-std()"       "numeric"
[74,] "fBodyBodyAccJerkMag-meanFreq()"  "numeric"
[75,] "fBodyBodyGyroMag-mean()"         "numeric"
[76,] "fBodyBodyGyroMag-std()"          "numeric"
[77,] "fBodyBodyGyroMag-meanFreq()"     "numeric"
[78,] "fBodyBodyGyroJerkMag-mean()"     "numeric"
[79,] "fBodyBodyGyroJerkMag-std()"      "numeric"
[80,] "fBodyBodyGyroJerkMag-meanFreq()" "numeric"
