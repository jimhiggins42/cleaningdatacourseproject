    Activity Data Code Book

This data set contains summary data on movement data from volunteers wearing measurement devices.

For a description of the original source data, please see:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original source data can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Specifically, this data set contains mean and standard-deviation data for each
variable in the original data set for each test subject.

Each row contains an observation for a distinct pair of subject ID and activity. For each such pair,
the data set has the mean and standard deviation values for the different measurements.

subject_ids

    Indicates the subject ID for each observation.

activity

    Indicates the category of the activity measured. It is one of 6 possible values:

        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

BodyAcc.mean.X
BodyAcc.mean.Y
BodyAcc.mean.Z

    The mean X, Y, and Z components of estimated body acceleration.

GravityAcc.mean.X
GravityAcc.mean.Y
GravityAcc.mean.Z

    The mean X, Y, and Z components of estimated total acceleration.

BodyAccJerk.mean.X
BodyAccJerk.mean.Y
BodyAccJerk.mean.Z

    The mean X, Y, and Z components of estimated body jerk.

BodyGyro.mean.X
BodyGyro.mean.Y
BodyGyro.mean.Z

    The mean X, Y, and Z components of estimated triaxial angular velocity from the gyroscope.

BodyGyroJerk.mean.X
BodyGyroJerk.mean.Y
BodyGyroJerk.mean.Z

    The mean X, Y, and Z components of estimated triaxial angular jerk from the gyroscope.

BodyAccMag.mean
GravityAccMag.mean
BodyAccJerkMag.mean
BodyGyroMag.mean
BodyGyroJerkMag.mean

    The mean magnitude from the above variables.

BodyAcc.meanFreq.X
BodyAcc.meanFreq.Y
BodyAcc.meanFreq.Z

    The mean X, Y, and Z frequency components of estimated body acceleration.

BodyAccJerk.meanFreq.X
BodyAccJerk.meanFreq.Y
BodyAccJerk.meanFreq.Z

    The mean X, Y, and Z frequency components of estimated body jerk.

BodyGyro.meanFreq.X
BodyGyro.meanFreq.Y
BodyGyro.meanFreq.Z

    The mean X, Y, and Z frequency components of estimated  triaxial angular velocity from the gyroscope.

BodyAccMag.meanFreq
BodyAccJerkMag.meanFreq
BodyGyroMag.meanFreq
BodyGyroJerkMag.meanFreq

    The mean frqeuency magnitude of the above variables.

angle.tBodyAccMean.gravity
angle.tBodyAccJerkMean.gravityMean
angle.tBodyGyroMean.gravityMean
angle.tBodyGyroJerkMean.gravityMean
angle.X.gravityMean
angle.Y.gravityMean
angle.Z.gravityMean

    The angle between the two indicated variables.

BodyAcc.std.X
BodyAcc.std.Y
BodyAcc.std.Z
GravityAcc.std.X
GravityAcc.std.Y
GravityAcc.std.Z
BodyAccJerk.std.X
BodyAccJerk.std.Y
BodyAccJerk.std.Z
BodyGyro.std.X
BodyGyro.std.Y
BodyGyro.std.Z
BodyGyroJerk.std.X
BodyGyroJerk.std.Y
BodyGyroJerk.std.Z
BodyAccMag.std
GravityAccMag.std
BodyAccJerkMag.std
BodyGyroMag.std
BodyGyroJerkMag.std

    The standard deviation of the above variables. Each variable is analogous to the corresponding mean variable above.
