Variables
===================================================
Activity ID,
Activity,
Subject- Volunteer assigned a number from one to 30
79 other experimental variables with standard deviations and mean measured over different parameters

These variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are
==================================================================
mean(): Mean value
std(): Standard deviation


Raw Data Files
========================================

Training Data - Train_X.txt ,train_Y.txt, subject_train.txt
Test Data - Test_X.txt, test_Y.txt, subject_test.txt
Reference Label files - activity_labels.txt, features. txt

Transformed Summary Data 
=======================================
FinalTidyData.txt

Trasformations and steps
=======================================

# Reading all training data from working directory.
# Reading relevant labels to be used for column descriptions.
# Assigning column names for all feature variables.
# Making a copy of the Raw data 
# Filtering out only mean and standard deviation variables
# Adding Activity ID and Subject to Training data
# Defining and assigning column names to all variables.
# Merging Activity Names to get names against each activity ID.
# Sorting Rows and Columns for final data.

# Performing same steps to create a similar Test dataset
# Re assigning common name to merge (rbind) datasets

# Merge(Rbind both data sets)
# Use reshape2 package to create summarized data
# Create Summary data using recast function
# Remove underscores in summary data - activity column.
# Write data summary data in text file.