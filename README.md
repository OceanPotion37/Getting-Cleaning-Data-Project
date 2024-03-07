# Getting-Cleaning-Data-Project
This repository contains my work for the Peer-graded Assignment in the JHU Getting and Cleaning Data Course. 

The data used in this project was collected from the accelerometers of the Samsung Galaxy S smartphone. 
A full description of this data can be found at the link below:
[Human Activity Recognition Using Smartphones.](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones)

The data can be downloaded by clicking the link below:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]


run_analysis.R:
1. Loads the libraries needed.
2. Sets the folder containing the downloaded data as the working directory.
3. Reads tables & assigns variables.
4. Merges the training and test sets to make one data set.
5. Extracts only the measurements on the mean and standard deviation for each measurement.
6. Adds descriptive activity names to the data set and removes activity IDs.
7. Properly labels the data set using descriptive variable names.
8. Creates a 2nd, separate tidy data set and...
       b. Gets the average(mean) for each activity & each subject.
       a. Writes this tidy data set to a .txt file.

tidy_dataset.txt: Contains the tidy data set with the average of each variable for each activity and each subject.

CodeBook.md: This file describes the variables used to clean up the data.
