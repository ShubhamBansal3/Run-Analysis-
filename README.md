
Human Activity Recognition Using Smartphones summarized Tidy Dataset
==================================================================
Shubham Bansal
Github:- https://github.com/ShubhamBansal3/Run-Analysis-
==================================================================

Training and Test data sets for human activity recognition using smartphones were merged to create a Tidy Summarized 
dataset with the average of each variable for each activity and each subject.


Notes:
======================================
- 30 Volunteers/Subjects helped carrying out the experiments.
- Experimental data for 70% of subjects used for producing training data and 30% of subjects for test data.

Steps to create final Summary data:
=========================================
- Out of 561 different variables only those of mean and standard deviation of different experiments were considered.
- Column names were descriptively given and sorted in appropriate order.
- Both Training and Test datasets after tidying up were merged to form a final Raw dataset.
- Final raw dataset was summarized (averaged) variables for each activity and each subject.

Summary Data
======================================
The summary data contains mean of all variables aggregated over each subject(volunteer) and activity.
This contains 180 Rows and 82 Columns.
Activity ID, Activity and Subject are the dimensions.



Files in GitHub Repository
=========================================
README.md - A descriptive text file explaining steps and the dataset briefly

Codebook.md - Describes the variables, the data, and any transformations or work performed to clean up the data

run_analysis.R - The R code used to generate a tidy summarized data set using Training and test data sets available in the working directory.


============================================= 
For more information about this dataset contact: shubham.mpb95@gmail.com

