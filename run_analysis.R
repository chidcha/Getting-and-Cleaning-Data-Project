## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Cr. message from Week 4 of Getting and Cleaning Data! course project from coursera.org.

# install 'data.table'
if (!require("data.table")) {
  install.packages("data.table")
}

# install 'reshape2'
if (!require("reshape2")) {
  install.packages("reshape2")
}

#1. Require 'data.table'
require("data.table")

#2. Require 'reshape2'
require("reshape2")

#3. Load the activity labels 'activity_labels.txt' from folder 'UCI HAR Dataset'.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

#4. Load the data column names 'features.txt' from folder 'UCI HAR Dataset'.
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

#5. Extract only the measurements on the mean and standard deviation for each measured feature.
extract_features <- grepl("mean|std", features)

#6. Load and process X_test data from './UCI HAR Dataset/test/X_test.txt' 
#and load and process y_test data from './UCI HAR Dataset/test/y_test.txt'.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")


#7. Load and process Subject_test data from './UCI HAR Dataset/test/subject_test.txt'.
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

names(X_test) = features

#8. Extract only the measurements on the mean and standard deviation for each measurement of tested feature.
X_test = X_test[,extract_features]

#9. Load activity labels.
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

#10. Bind data to test_data variable
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

#11. Load and process X_train data from '/UCI HAR Dataset/train/X_train.txt'.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

#12. Load and process y_train data from './UCI HAR Dataset/train/y_train.txt'.
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

#13. Load and process subject_train data from './UCI HAR Dataset/train/subject_train.txt'.
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

names(X_train) = features

#14.Extract only the measurements on the mean and standard deviation for each measurement of x_train.
X_train = X_train[,extract_features]

#15.Load activity data
y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

#16. Bind data to train_data variable.
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

#17. Merge test and train data to merge_data variable.
merge_data = rbind(test_data, train_data)

id_labels   = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(merge_data), id_labels)
melt_data      = melt(merge_data, id = id_labels, measure.vars = data_labels)

#18. Apply mean function to dataset using dcast function
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

#19. Write a table to file 'tidy_data.txt' by write.table() using row.name=FALSE. 
write.table(tidy_data, file = "./UCI HAR Dataset/result/tidy_data.txt", row.names = FALSE)