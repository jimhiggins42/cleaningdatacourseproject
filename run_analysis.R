# Create a tidy data set as per the course project for "Getting and Cleaning Data".
# 
# This function presumes that the related data is in a directory tree within the given
# directory.
#
# Specific steps:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.
#
# Parameters
#
#   data_dir    The directory that holds the data set
#
# Return value
#
#   A tidy data set as described above

run_analysis <- function(data_dir = "data") {
    
    # First, create data frames based on the "training" and "test" data sets.
    
    training_set <- build_activity_data_frame("data/train/subject_train.txt",
                                              "data/train/X_train.txt",
                                              "data/train/y_train.txt",
                                              "data/features.txt",
                                              "data/activity_labels.txt")
                                              
    test_set <- build_activity_data_frame("data/test/subject_test.txt",
                                          "data/test/X_test.txt",
                                          "data/test/y_test.txt",
                                          "data/features.txt",
                                          "data/activity_labels.txt")

    # Get the columns out of the 
    
    # Merge the training and test data sets to create one data set.
    
    combined_set<- merge(test_set, training_set, all = TRUE)
 
    # 
       
    combined_set
}


# Build (and return) a data frame containing the pertinent data from the given activity data set.
# It extracts the measurements that relate to mean and standard deviation.
# It adds "subject_ids" and "activities" fields to the main data.

# Parameters:
# 
#   subject_file The file containing the subject IDs for the test rows.
#   test_set_file The file containin the test set.
#   test_labels_file The file containing the test labels.
#   featuers_file The file containing the features list.
#   activity_labels_file The file containing the activity labels.
#
# Return value
#
#   A data frame containing the data from the given files.
#   The columns are massaged to match the desired format.
build_activity_data_frame <- function(subject_file, test_set_file, test_labels_file, features_file, activity_labels_file) {

    # Read the subjects. This identifies the subject that performed each activity in the test set.
    
    subjects <- read.table(subject_file)
        
    # Read the test set.
    
    test_set <- read.table(test_set_file)
    
    # Read the test labels. This identifies the type of activity for each test in the test set.
    
    test_labels <- read.table(test_labels_file)
    
    # Read the features. These are the labels for the measurements in the test set.
    
    features <- read.table(features_file, stringsAsFactors = FALSE)
    
    # Read the activity labels. This describes the observations in the test_set.
    # TODO: how to use this to populate the activities?
    activity_labels <- read.table(activity_labels_file, stringsAsFactors = FALSE)
    
    # Now that we have the raw data, build it up into the requested data frame.
    
    # Label the parameters in the data set according to the features descriptions.
    
    names(test_set) <- features$V2

    # Now extract only the measurements on mean and standard deviation.
 
    #stdframe <- select(test_set, contains("std", ignore.case = TRUE))
    #meanframe <- select(test_set, contains("mean", ignore.case = TRUE))
    #test_set <- data.frame(stdframe, meanframe)

    # Add the subject IDs.
    
    test_set[, "subject_ids"] <- subjects
    
    # Name the activities in the data set.
    
    test_set[, "activity"] <- test_labels
    test_set[test_set$activity==1,]$activity <- "WALKING"
    test_set[test_set$activity==2,]$activity <- "WALKING_UPSTAIRS"
    test_set[test_set$activity==3,]$activity <- "WALKING_DOWNSTAIRS"
    test_set[test_set$activity==4,]$activity <- "SITTING"
    test_set[test_set$activity==5,]$activity <- "STANDING"
    test_set[test_set$activity==6,]$activity <- "LAYING"
    
    test_set
}
