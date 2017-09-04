Variables:-

Activity ID,
Activity,
Subject- Volunteer assigned a number from one to 30
79 other experimental variables with standard deviations and mean measured over different parameters


Raw Data Files-

Training Data - Train_X.txt ,train_Y.txt, subject_train.txt
Test Data - Test_X.txt, test_Y.txt, subject_test.txt
Reference Label files - activity_labels.txt, features. txt

Transformed Summary Data 
FinalTidyData.txt

Trasformations and steps

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