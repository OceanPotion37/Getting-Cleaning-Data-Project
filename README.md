# Getting-Cleaning-Data-Project
This repository contains my work for the Peer-graded Assignment in the JHU Getting and Cleaning Data Course in the run_analysis.R script. 

The data used in this project was collected from the accelerometers of the Samsung Galaxy S smartphone. 
A full description of this data can be found at the link below:
[Human Activity Recognition Using Smartphones.](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones)

The data can be downloaded by clicking the link below:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

This script was used to first merge these datsets, then the mean and standard deviation of each variable was found, descriptive names were added regarding the activities, and the variable names themselves were improved. After this a new tidy data set was created which included the means of each subject measurement and activity measurment. 

Additional information regarding how the data was cleaned and more can be found in the codebook.md
