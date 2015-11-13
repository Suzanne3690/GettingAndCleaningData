#### Getting And Cleaning Data: Project 


## read and combine subject_test and subject_train
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject <- rbind(subject_test, subject_train)
table(subject)

## read and combine activity_test and activity_train
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity <- rbind(activity_test, activity_train)

## recode activity vector with descriptive levels
activities <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
activity <- as.character(activity$V1)
activity <- factor(activity, levels = c("1","2","3","4","5","6"), labels=activities)
table(activity)

## read and combine X-test and X-train
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X <- rbind(X_test, X_train)
dim(X)

## read list of 561 feature variables
features <- read.table("./UCI HAR Dataset/features.txt")
features$V2 <- as.character(features$V2)

## make list of variables measured on mean or standard deviation
means <- features[grep("mean()", tolower(features$V2)),]
sds <- features[grep("std()", features$V2),]
keep_list <- rbind(means, sds)
keep_list <- keep_list[order(keep_list$V1),]

## make data frame of X with only the variables in keep_list,
## strip "(", ")", "-" and "," from the names 
X_keep <- X[, keep_list$V1]
Xnames <- keep_list$V2
Xnames <- gsub("\\(\\)","",Xnames)
Xnames <- gsub("\\(", "_", Xnames)
Xnames <- gsub("\\)", "", Xnames)
Xnames <- gsub("-","_", Xnames)
Xnames <- gsub(",", "_", Xnames)
names(X_keep) <- Xnames

## bind the subject and activity variables with X_keep
s <- cbind(subject, activity)
names(s) <- c("Subject", "Activity")
X_keep <- cbind(s,X_keep)
X_keep <- X_keep[order(X_keep$Subject, X_keep$Activity),]
dim(X_keep)
names(X_keep)

## summarise as mean values grouped by subject and activity
require(dplyr)
tidy_data <- X_keep %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
dim(tidy_data)

## save tidy_data as text file and save names for codebook
write.table(tidy_data, "tidy_data.txt", row.names=FALSE)
write.table(names(X_keep), file="tidy_data_names.txt")


