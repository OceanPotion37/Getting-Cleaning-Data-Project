

The data used in this project was collected from the accelerometers of the Samsung Galaxy S smartphone. 
A full description of this data can be found at the link below:
[Human Activity Recognition Using Smartphones.](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones)

The data can be downloaded by clicking the link below:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

The dataset includes the following files:
=========================================

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

For each record it is provided: ====================================== 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in  standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


Variables Description (data read from project data files):
    - features -- features.txt file
    - activity_labels -- activity_labels.txt file
    - s_test -- subject_test.txt file
    - x_test -- X_test.txt
    - y_test -- Y_test.txt
    - s_train -- subject_train.txt
    - x_train -- X_train.txt
    - y_train -- Y_train.txt


Processing variables (created while cleaning the data):
       - merged_train & merged_test -- for binding the datasets listed above
       - merged_dataset -- for the merged test set and train set
       - mean_and_std_dataset -- data set with only measurements on the mean and standard deviation for each measurement
       - tidy_dataset -- for adding a column containing the names of activities and removing the activity ID column
       - final_tidy_dataset -- for creating a new tidy dataset with the avg of each variable for each activity & each subject


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
