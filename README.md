### Getting-and-Cleaning-Data-Project
### --------
Getting-and-Cleaning-Data-Project (May 2018 -Update 2021) 
### --------
###
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 

The goal is to prepare tidy data that can be used for later analysis. 

You will be required to submit in the result folder: 
1) a tidy data set as described below ***, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4)You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is **wearable computing** - see for example this article . 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

**1. Merges the training and the test sets to create one data set.**

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



=========================================
### How the script works
### Execute run_analysis.R by RStudio:
- Go to working directory
- Use command source('run_analysis.R')
- Go to './UCI HAR Dataset/result/tidy_data.txt' for collect the result tidy data file.

> About my working directory
- 'run_analysis.R' is in my working directory.

>  My .UCI HAR Dataset directory is inside my working directory. This directory includes the following files and folders.
>>  files
- .UCI HAR Dataset/README.txt >>คำอธิบายเซตข้อมูล
- .UCI HAR Dataset/features_info.txt >>แสดงข้อมูลเกี่ยวกับตัวแปรที่ที่ถูกใช้บน Featured Vector
- .UCI HAR Dataset/features.txt >> รายชื่อของฟีเจอร์์ทั้งหมด
- .UCI HAR Dataset/activity_labels.txt >>ป้ายของคลาสและชื่อของกิจกรรม

>>  folders
- result >> สร้างขึ้น
- train >>มีอยู่แล้ว
- test >>มีอยู่แล้ว

** After run run_analysis.R by RStudio:
- Go to '.result/tidy_data.txt' for collect the result tidy data file.


### ---------------------------------------------------------------------------
Cr. message from Week 4 of Getting and Cleaning Data! course project from coursera.org.
### ---------------------------------------------------------------------------

I have read the above message, done the project and written the codebook.md.
https://github.com/chidcha/Getting-and-Cleaning-Data-Project/blob/master/CodeBook.md

I have uploaded the code of my Getting-and-Cleaning-Data-Project at 
[need to update the link]

