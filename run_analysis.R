rm(list=ls())

if(!require(dplyr)){
  install.packages("dplyr")
  library(dplyr)
}
if(!require(car)){
  install.packages("car")
  library(car)
}


#Set working directory
path_wd <- paste0("/Users/Bart/Documents/Coursera_data_cleaning/",
                  "project")
setwd(path_wd)

#Read in test data
setwd("./test")
testD <- read.table("X_test.txt")
testDy <- read.table("y_test.txt")#activity codes
testDsub <- read.table("subject_test.txt")#subject codes
setwd("../")

#Read in training data
setwd("./train")
trainD <- read.table("X_train.txt")
trainDy <- read.table("y_train.txt")#activity codes
trainDsub <- read.table("subject_train.txt")#subject codes
setwd("../")

#access column labels
feat <- read.table("features.txt")
feat <- as.character(feat[,2])

#combine subject id, activity id and data for test subjects
testAll <- cbind(testDsub, testDy, testD)

#combine subject id, activity id and data for training subjects
trainAll <- cbind(trainDsub, trainDy, trainD)

#merge training and test data sets
mergedD <- rbind(testAll, trainAll)

#create labels for id's and label all columns
newLabs <- c("subject_id", "activity_id")
newLabsAll <- c(newLabs, feat)
colnames(mergedD) <- newLabsAll

#extract only measurements of mean and standard deviation and combine with id's
a<-mergedD[,grepl("mean", colnames(mergedD))]
b<-mergedD[,grepl("std", colnames(mergedD))]
c<-mergedD[,grepl("Mean", colnames(mergedD))]
d<-mergedD[,c(1,2)]
D<-cbind(d,a,b,c)
as.character(D$activity_id)

#recode activities to meaningful labels
D$activity_id <- recode(D$activity_id, "1='WALKING';
                        2='WALKING_UPSTAIRS';
                        3='WALKING_DOWNSTAIRS';
                        4='SITTING';
                        5='STANDING';
                        6='LAYING'")

#create summary tidy data set containing the means of the mean and standard
#deviation variables for each activity for each subject
tidy <- D %>%
  group_by(subject_id, activity_id) %>%
  summarise_each(funs(mean))

#write out summary tidy data in .txt format
write.table(tidy, "subject_activity_summary.txt", row.name = FALSE)

#code to read summary tidy data
look <- read.table("subject_activity_summary.txt", header = TRUE)
