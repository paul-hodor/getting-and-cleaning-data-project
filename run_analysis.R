

## Set the working directory to the location of the downloaded dataset
## represented by directory "UCI HAR Dataset"

setwd('/path/to/dir/containing/UCI-dir/')


################################################################################
## 0. Read data files

## activity labels
act_lab <- read.delim("UCI HAR Dataset/activity_labels.txt", sep=" ",
                      header=FALSE, col.names=c("id","activity"),
                      stringsAsFactors=FALSE)

## features, i.e. measurements
features <- read.delim("UCI HAR Dataset/features.txt", sep=" ",
                       header=FALSE, col.names=c("id","feature"),
                       stringsAsFactors=FALSE)

## training data:
## measurement data: rows are observations and columns are features
train <- read.delim("UCI HAR Dataset/train/X_train.txt",sep="",
                    header=FALSE,stringsAsFactors=FALSE)
## subject labels (1-30) for rows in the above table
train.sub <- read.delim("UCI HAR Dataset/train/subject_train.txt",sep="",
                        header=FALSE,stringsAsFactors=FALSE)
## activity labels (1-6) for rows in the above table
train.y <- read.delim("UCI HAR Dataset/train/y_train.txt",sep="",
                      header=FALSE,stringsAsFactors=FALSE)

## test data (similar contents to "train"):
test <- read.delim("UCI HAR Dataset/test/X_test.txt",sep="",
                   header=FALSE,stringsAsFactors=FALSE)
test.sub <- read.delim("UCI HAR Dataset/test/subject_test.txt",sep="",
                       header=FALSE,stringsAsFactors=FALSE)
test.y <- read.delim("UCI HAR Dataset/test/y_test.txt",sep="",
                     header=FALSE,stringsAsFactors=FALSE)


################################################################################
## 1. Merge training and test sets

## Store membership in train and test sets
set <- c(rep("train",nrow(train)), rep("test",nrow(test)))
data <- rbind(train, test)


################################################################################
## 2. Extract only the measurements on mean and standard deviation

## Keep only features that contain the strings "mean()" or
## "std()". Exclude "mean"-like features, such as "meanFreq" or
## "gravityMean"
feat.keep <- grepl("mean\\(\\)",features$feature) |
    grepl("std\\(\\)",features$feature)
data <- data[,feat.keep]

## Label the columns with feature names from variable "features"
names(data) <- features$feature[feat.keep]
names(data) <- gsub("\\(","",names(data))
names(data) <- gsub("\\)","",names(data))
names(data) <- gsub("-",".",names(data))


################################################################################
## 3. Name the activities in the data set

act <- act_lab$activity[c(train.y$V1,test.y$V1)]


################################################################################
## 4. Label the data set with descriptive variable names.

## Compile everything into one data frame
data <- cbind(
    data.frame(sbj=c(train.sub$V1,test.sub$V1),
               set=set,
               act=act),
    data)


################################################################################
## 5. From the data set in step 4, create a second, independent tidy
## data set with the average of each variable for each activity and
## each subject.

## Reshape the data into tall and skinny, with a single column of measurements
library(reshape2)
id.vars <- c("sbj","set","act")
data.melt <- melt(data,id.vars,names(data)[!names(data) %in% id.vars])

## Reshape the data into wide form
data.tidy <- dcast(data.melt, set + sbj + act ~ variable, mean,
                   value.var="value")


################################################################################
## 6. Output tidy dataset

write.table(data.tidy, file="data.tidy.txt", row.name=FALSE)
