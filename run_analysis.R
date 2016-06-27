#####
### run_analysis.R
### Created by depinebj on 6/26/2016
### 
### This R script was created for the Coursera course Getting and Cleaning Data project
### The Coursera objective sections are noted in the code below
#####


library(plyr)
library(reshape2)

## Download zip file into local directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localtempzip <- "tempzip.zip"
download.file(url,localtempzip,method="auto",mode="wb")

## Unzip file -- One directory is extracted containing the needed data and attributes
unzip(localtempzip)

## Read Test data file (X_test.txt)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")

## Read Test activity file (y_test.txt)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

## Read Train data file (X_train.txt)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")

## Read Train activity file (y_train.txt)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

## Read Test subject file (subject_test.txt)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Read Train subject file (subject_train.txt)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Read Activity label file (activity_labels.txt)
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

## Read Features label file (features.txt)
features <- read.table("UCI HAR Dataset/features.txt")

## Coursera Objective #4
## Add descriptive column names
colnames(X_test) <- features[,2]
colnames(X_train) <- features[,2]
colnames(y_test) <- c("Activity")
colnames(y_train) <- c("Activity")
colnames(subject_test) <- c("Participant")
colnames(subject_train) <- c("Participant")  

## Coursera Objective #1: 
## Merge Test and Train together (Test on top, Train merged on to the bottom of Test)
mergedX <- rbind(X_test,X_train)
mergedy <- rbind(y_test,y_train)
mergedsubject <- rbind(subject_test,subject_train)

## Coursera Objective #2:
## Extract only the Mean and Standard Deviation for each measurement
mergedXmeanstdonly <- mergedX[,grep("mean|std",colnames(mergedX),ignore.case=TRUE)]

## Combine columns: Add Activity(mergedy) and Subject(mergedsubject) columns to X(mergedX)
combined <- cbind(mergedy,mergedsubject,mergedXmeanstdonly)

## Coursera Objective #3:
## Use descriptive activity names
## Replace activity number with descriptive name
combined[,1] <- activity[combined[,1],2]

## Coursera Objective #4:
## (See also above Add Descriptive Column Names added in addition to the below refinements)
names(combined) <- gsub("Acc","Acceleration ",names(combined))
names(combined) <- gsub("Gyro","Gyroscope ",names(combined))
names(combined) <- gsub("Mag","Magnitude ",names(combined))
names(combined) <- gsub("-mean()","Mean ",names(combined))
names(combined) <- gsub("std()","Standard Deviation ",names(combined))
names(combined) <- gsub("Body","Body ",names(combined))
names(combined) <- gsub("Jerk","Jerk ",names(combined))
names(combined) <- gsub("Freq","Frequency ",names(combined))
names(combined) <- gsub("gravity","gravity ",names(combined))
names(combined) <- gsub("\\(t"," Time ",names(combined))
names(combined) <- gsub("\\(f"," Frequency ",names(combined))
names(combined) <- gsub("^t","Time ",names(combined))
names(combined) <- gsub("^f","Frequency ",names(combined))
names(combined) <- gsub("-","",names(combined))
names(combined) <- gsub("\\("," ",names(combined))
names(combined) <- gsub("\\)","",names(combined))



## Coursera Objective #5:
## Create a second data set with the average of each variable for each activity and subject

## Create mean by Activity and Participant
averagedata <- ddply(combined, .(Activity,Participant),function(x) colMeans(x[,3:68]))

## Write resulting table
write.table(averagedata,"tidy.txt",row.names=FALSE,col.names=TRUE,quote=FALSE)

