####This README file describes how the run_analysis.R script works.

There are 4 files in this repo:

- CodeBook.md,  a description of the variables in the tidy dataset

- This README.md

- run_analysis.R, an R script to produce the tidy dataset

- subject_activity_summary.txt, a tidy summarised dataset

This R script requires the data for analysis to have been downloaded and unzipped to your working directory. The data can be downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". The contents of the unzipped UCI HAR Dataset need to be placed in your working directory.

The raw data for this analysis comes from a study into human activity recognition using smart phone accelerometers and gyroscopes. For a breakdown of the study and methods used please refer to the README.txt obtained from the above download. 

The R script will then:

  1. Check to see if required packages (dplyr and car) are installed and if not it will install and place them in the library.
  
  2. Read in the training and test datasets and their corresponding activity and subject codes.
  
  3. Read in the column labels "as is". These will be the variable names and they will remain unchanged so that their   link to the original data is clear and unambiguous.
  
  4. The training and test datasets are then assembled (cbind command) prior to them being merged into 1 dataset (using rbind) called "mergeD".
  
  5. Two new labels are created (subject_id and activity_id) and are added to a vector of the variable names prior to renaming all column names in the mergeD dataset.
  
  6. The dataset is subsetted to contain only those variables that are either a mean or standard deviation measurement and the subject and activity id's are preserved.
  
  7. The activity codes are recoded to meaningful names, obtained from "activity_labels.txt" from the downloaded files. This is achieved using the "car" package.
  
  8. The "dplyr" package is then used with pipe commands to group_by on the subject and activity, and summarise all the variables with the mean function. This tidy summarised dataset is called "tidy".
  
  9. The tidy dataset is then written out as a text file and is called "subject_activity_summary.txt".
  
  10. Lastly the read.table command is provided to assist in reading the created text file back into R.

For an understanding of the variables conatined in the "subject_activity_summary.txt" tidy dataset please refer to CodeBook.md