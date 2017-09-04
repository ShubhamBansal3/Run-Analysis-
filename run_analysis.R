# Reading all training data from working directory.

Subject_Train<- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")

Y_Train<- read.table(file = "./UCI HAR Dataset/train/y_train.txt")

X_Train<- read.table(file = "./UCI HAR Dataset/train/X_train.txt")


#Reading relevant labels to be used for column descriptions.

features<- read.table(file = "./UCI HAR Dataset/features.txt")
Activity_Labels<- read.table(file = "./UCI HAR Dataset/activity_labels.txt")

#Assigning column names for all feature variables.

names(X_Train)<-as.character(features[,2])

# Making a copy of the Raw data 
X_Train_Work<-X_Train

# Filtering out only mean and standard deviation variables
MeanSdVar <- grep("mean()|std()", names(X_Train_Work))

X_Train_MeanSd<- X_Train_Work[,MeanSdVar]

# Adding Activity ID and Subject to Training data
ActivityID_Train<-Y_Train

X_Train_MeanSd<- cbind(X_Train_MeanSd,ActivityID_Train)

X_Train_MeanSd<- cbind(X_Train_MeanSd,Subject_Train)


# Defining and assigning column names to all variables.
VarNames<-c(grep("mean()|std()", names(X_Train_Work), value = TRUE),"ActivityID","Subject_Train")

names(X_Train_MeanSd)<- VarNames


names(Activity_Labels)<- c("ActivityID","Activity")

# Merging Activity Names to get names against each activity ID.
X_Train_Final<- merge(X_Train_MeanSd,Activity_Labels,by = "ActivityID", all.x = TRUE)


# Sorting Rows and Columns for final data.
X_Train_Final<-cbind(X_Train_Final[,82],X_Train_Final[1],X_Train_Final[81],X_Train_Final[2:80])

colnames(X_Train_Final)[1]<-"Activity"

X_Train_Final<-X_Train_Final[order(X_Train_Final$Subject_Train), ]


# Saving Final Training Data
Training_Data<- X_Train_Final


# Performing same steps to create a similar Test dataset
Y_Test<- read.table(file = "./UCI HAR Dataset/test/y_test.txt")

X_Test<- read.table(file = "./UCI HAR Dataset/test/X_test.txt")

Subject_Test<- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")

names(X_Test)<-as.character(features[,2])

X_Test_Work<-X_Test

MeanSdVarTest <- grep("mean()|std()", names(X_Test_Work))

ActivityID_Test<-Y_Test

X_Test_MeanSd<- X_Test_Work[,MeanSdVarTest]

X_Test_MeanSd<- cbind(X_Test_MeanSd,ActivityID_Test)
                      
X_Test_MeanSd<- cbind(X_Test_MeanSd,Subject_Test)
                      
VarNames<-c(grep("mean()|std()", names(X_Test_Work), value = TRUE),"ActivityID","Subject_Test")
                      
names(X_Test_MeanSd)<- VarNames
                      
names(Activity_Labels)<- c("ActivityID","Activity")
                      
X_Test_Final<- merge(X_Test_MeanSd,Activity_Labels,by = "ActivityID", all.x = TRUE)
                      
X_Test_Final<-cbind(X_Test_Final[,82],X_Test_Final[1],X_Test_Final[81],X_Test_Final[2:80])
                      
colnames(X_Test_Final)[1]<-"Activity"
                      
Test_Data<- X_Test_Final

# Re assigning common name to merge (rbind) datasets
names(Training_Data)[3]<-"Subject"

names(Test_Data)[3]<-"Subject"

# Merge(Rbind both data sets)
Final_Raw_data<- rbind(Training_Data,Test_Data)

# Use reshape2 package to create summarized data 
require(reshape2)

# Create Summary data using recast function
Summary<- recast(Final_Raw_data,ActivityID + Activity + Subject ~ variable, mean, id.var = c("ActivityID","Activity","Subject"))

# Remove underscores in summary data - activity column.
Summary$Activity<-  sub("_", " ",Summary$Activity)


# Write data summary data in text file.
write.table(Summary,file = "./FinalTidyData.txt", row.names = FALSE)