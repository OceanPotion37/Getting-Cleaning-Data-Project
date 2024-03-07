##########################
# PART 0: importing data #
##########################

# Load appropriate library 
library(dplyr)


# Import dataset
if(!file.exists("./getdata")){
	dir.create("./getdata")
	}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./getdata/proj3dataset.zip", method = "curl")

unzip(zipfile = "./getdata/proj3dataset.zip", exdir = "./getdata")


#############################################
# PART 1: merging the train & test datasets #
#############################################

## read activity labels & feature vector (& assign activity variable names)
activity_labels <- read.table("./getdata/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("Activity_ID", "Activity")

features <- read.table("./getdata/UCI HAR Dataset/features.txt")
colnames(features) <- c("na", "features_list")


## read & assign variables for test datasets
x_test <- read.table("./getdata/UCI HAR Dataset/test/X_test.txt")
colnames(x_test) <- features[, 2]

y_test <- read.table("./getdata/UCI HAR Dataset/test/y_test.txt")
colnames(y_test) <- "Activity_ID"

s_test <- read.table("./getdata/UCI HAR Dataset/test/subject_test.txt")
colnames(s_test) <- "Subject_ID"


## read & assign variables for train datasets 
x_train <- read.table("./getdata/UCI HAR Dataset/train/X_train.txt")
colnames(x_train) <- features[, 2]

y_train <- read.table("./getdata/UCI HAR Dataset/train/y_train.txt")
colnames(y_train) <- "Activity_ID"

s_train <- read.table("./getdata/UCI HAR Dataset/train/subject_train.txt")
colnames(s_train) <- "Subject_ID"


## merge test & train datasets
merged_train <- cbind(s_train, y_train, x_train)
merged_test <- cbind(s_test, y_test, x_test)
merged_dataset <- rbind(merged_train, merged_test)


##################################################################################################
# PART 2: extracting ONLY the measurements on the mean & standard deviation for each measurement #
##################################################################################################

mean_and_std_dataset <- merged_dataset[, grepl("Activity_ID|Subject_ID|mean\\(\\)|std\\(\\)", colnames(merged_dataset))]


##############################################################
# PART 3: naming the activities in the dataset descriptively #
##############################################################

tidy_dataset <- merge(activity_labels, mean_and_std_dataset, by = "Activity_ID", all.x = TRUE)
tidy_dataset <- select(tidy_dataset, -"Activity_ID")


################################################################
# PART 4: labeling the dataset with descriptive variable names #
################################################################

colnames(tidy_dataset) <- gsub("Acc", "Accelerometer", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("BodyBody", "Body", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("^f", "Frequency", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("Gyro", "Gyroscope", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("Mag", "Magnitude", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("mean", "Mean", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("std", "Std", colnames(tidy_dataset))
colnames(tidy_dataset) <- gsub("^t", "Time", colnames(tidy_dataset))


#############################################################################################################
# PART 5: creating another, new tidy dataset with the avg of each variable for each activity & each subject #
#############################################################################################################

### making 2nd tidy dataset 
final_tidy_dataset <- tidy_dataset %>%
  group_by(Subject_ID, Activity) %>%
  summarise_all(mean)


### writing second tidy data set to txt file
write.table(final_tidy_dataset, file = "tidy_dataset.txt", row.name=FALSE)