# HARUS data Code Book
##### (Human Activity Recognition Using Smartfones)

###Subject
  ID of student who performed proper activities
  
###Activity
Proper activity
  1. LAYING
  2. SITTING
  3. STANDING
  4. WALKING
  5. WALKING_DOWNSTAIRS
  6. WALKING_UPSTAIRS

### Feature values
There are average values for each mean and standart deviation of the features listed below. There are the parameters of data collected from the accelerometers from the Samsung Galaxy S smartphone
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Full descrptions of these features you can find on [this site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data structure
All data is performed by different files. Each variable is in its own file (subject, activity label, table of feature values for each measurement). All set is divided into two group (test, train, each has a proper folder).

* Firstly, for each of three variables the combined data set were made by concatenating "test" and "train" sets.
* Then three datasets were merged into one. Just mean and standart deviation values for each feature variable were chosen from all the range.
* The merged data set were aggregated by "subject" and "activity" variables to calculate avarage of each "mean" and "std" measured values. So the result set consist avarage values for each activity of each subject
