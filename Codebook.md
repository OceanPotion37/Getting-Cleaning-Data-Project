Variables Description (data read from project data files):
    features -- features.txt file
    activity_labels -- activity_labels.txt file
    s_test -- subject_test.txt file
    x_test -- X_test.txt
    y_test -- Y_test.txt
    s_train -- subject_train.txt
    x_train -- X_train.txt
    y_train -- Y_train.txt


Processing variables (created while cleaning the data):
    merged_train & merged_test -- for binding the datasets listed above
    merged_dataset -- for the merged test set and train set
    mean_and_std_dataset -- data set with only measurements on the mean and standard deviation for each measurement
    tidy_dataset -- for adding a column containing the names of activities and removing the activity ID column
    final_tidy_dataset -- for creating another, new tidy dataset with the avg of each variable for each activity & each subject
