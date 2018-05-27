=========================================
###              Getting and Cleaning Data Project Code Book     
=========================================
###
### Machine/Tool Specification
 - Microsoft Windows 10 Pro/R version 3.3.2 (2016-10-31)

=========================================
### Description:
This file describes the variables, the data, and any transformations or work that you performed to clean up the data.



=========================================
### The data set

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


=========================================
### Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain activityrecognition '@' smartlab.ws

=========================================
### The data set description:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities that combines a set of:-
- WALKING, 
- WALKING_UPSTAIRS, 
- WALKING_DOWNSTAIRS, 
- SITTING, 
- STANDING, 
- LAYING
wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

=========================================
### Human Activity Recognition Using Smartphones Dataset Version 1.0


=========================================
### For each record it is provided:
=========================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


=========================================
### The dataset includes the following files:

- 'README.txt'
- 'features_info.txt' 
   > Shows information about the variables used on the feature vector.
- 'features.txt'
   > Shows list of all features.
- 'activity_labels.txt': 
   > Shows the links of the class labels with their activity name.
- 'train/X_train.txt'
   > Shows the training set.
- 'train/y_train.txt'
   > Shows the training labels.
- 'test/X_test.txt': 
   > Shows the test set.
- 'test/y_test.txt'
   > Shows the test  labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt'
   > Shows each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt'
   > Shows the acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt'
   > Shows the body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt'
   > Shows the angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

=========================================
### Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

For more information about this dataset please contact: activityrecognition '@' smartlab.ws

=========================================
### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.


Cr. http://archive.ics.uci.edu/ml/machine-learning-databases/00240/ 

UCI Dataset names 15-Feb-2015 19:08	6.2K	 
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names


UCI HAR Dataset.zip	15-Feb-2015 19:22	58M	
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

=========================================
### Transformation details of this project are followed by the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

=========================================
### Implement run_analysis.R by the above steps and describe the variables:
1. Require 'data.table'
2. Require 'reshape2'
3. Load the activity labels 'activity_labels.txt' from folder 'UCI HAR Dataset'.
4. Load the data column names 'features.txt' from folder 'UCI HAR Dataset'.
5. Extract only the measurements on the mean and standard deviation for each measured feature.
6. Load and process X_test data from './UCI HAR Dataset/test/X_test.txt' 
   and load and process y_test data from './UCI HAR Dataset/test/y_test.txt'.
7. Load and process Subject_test data from './UCI HAR Dataset/test/subject_test.txt'.
8. Extract only the measurements on the mean and standard deviation for each measurement of tested feature.
9. Load activity labels.
10. Bind data to test_data variable.
11. Load and process X_train data from '/UCI HAR Dataset/train/X_train.txt'.
12. Load and process y_train data from './UCI HAR Dataset/train/y_train.txt'.
13. Load and process subject_train data from './UCI HAR Dataset/train/subject_train.txt'.
14. Extract only the measurements on the mean and standard deviation for each measurement of x_train.
15. Load activity data.
16. Bind data to train_data variable.
17. Merge test and train data to merge_data variable.
18. Apply mean function to dataset using 'dcast' function.
19. Write a table to file 'tidy_data.txt' by write.table() using row.name=FALSE.

=========================================
### Execute run_analysis.R by RStudio:
- Go to work directory
- Use command source('run_analysis.R')
- Go to './UCI HAR Dataset/result/tidy_data.txt' for collect the resslt tidy data file.
