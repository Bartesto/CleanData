---
title: "CodeBook"
author: "Bart"
date: "21 February 2015"
output: html_document
---

The purpose of this code book is to describe the variables and the data contained in the wide format tidy dataset "subject_activity_summary.txt".

This dataset is a summary of data from the Samsung data as downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". The original data for both the test and training subjects were combined and this process is described in the README.md along with the other steps that were performed to produce the tidy dataset "subject_activity_summary.txt".

The purpose of the tidy dataset was to summarise all variables that were either a mean or a standard deviation, for each activity performed by each subject in the Samsung study. Mean and standard deviation measurements were understood to be those metrics with the word mean or letters std in the variable name. These variables only were kept for summarising in the tidy dataset.

The original variable names as described in the the file called "features.txt" were used. This is for two reasons, ease of coding and to preserve the link to the original data to avoid misinterpretation. However bear in mind that **ALL** values in the tidy dataset "subject_activity_summary.txt" are **MEANS** of the original data values whether they were originally means or standard deviations as per instructions for this project. There are no units for this data, all values are **MEANS** of normalised data with values between -1 and 1.

What follows is a description of the variables as described in the original codebook titled "features_info.txt". As the same variable names are used the description remain the same.

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyBodyAccJerkMag, fBodyBodyGyroMag, fBodyBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation"

A list of the variable names as they appear in the tidy dataset "subject_activity_summary.txt" follows. Where a name ends in "XYZ" there will be three variable names in the dataset, one ending in "X", one in "Y" and one in "Z", for the three axis of motion.


tBodyAcc-mean()-XYZ 

tBodyAcc-std()-XYZ

tGravityAcc-mean()-XYZ 

tGravityAcc-std()-XYZ 

tBodyAccJerk-mean()-XYZ 

tBodyAccJerk-std()-XYZ 

tBodyGyro-mean()-XYZ 

tBodyGyro-std()-XYZ 

tBodyGyroJerk-mean()-XYZ 

tBodyGyroJerk-std()-XYZ 

tBodyAccMag-mean() 

tBodyAccMag-std() 

tGravityAccMag-mean()

tGravityAccMag-std() 

tBodyAccJerkMag-mean() 

tBodyAccJerkMag-std() 

tBodyGyroMag-mean() 

tBodyGyroMag-std() 

tBodyGyroJerkMag-mean() 

tBodyGyroJerkMag-std() 

fBodyAcc-mean()-XYZ 

fBodyAcc-std()-XYZ 

fBodyAcc-meanFreq()-XYZ 

fBodyAccJerk-mean()-XYZ 

fBodyAccJerk-std()-XYZ 

fBodyAccJerk-meanFreq()-XYZ 

fBodyGyro-mean()-XYZ 

fBodyGyro-std()-XYZ 

fBodyGyro-meanFreq()-XYZ 

fBodyAccMag-mean() 

fBodyAccMag-std() 

fBodyAccMag-meanFreq() 

fBodyBodyAccJerkMag-mean() 

fBodyBodyAccJerkMag-std() 

fBodyBodyAccJerkMag-meanFreq()

fBodyBodyGyroMag-mean() 

fBodyBodyGyroMag-std() 

fBodyBodyGyroMag-meanFreq() 

fBodyBodyGyroJerkMag-mean() 

fBodyBodyGyroJerkMag-std() 

fBodyBodyGyroMag-meanFreq() 

angle(tBodyAccMean,gravity) 

angle(tBodyAccJerkMean),gravityMean) 

angle(tBodyGyroMean,gravityMean) 

angle(tBodyGyroJerkMean,gravityMean) 

angle(X,gravityMean) 

angle(Y,gravityMean)

angle(Z,gravityMean) 


