# GETTING AND CLEANING DATA PROJECT

This repository contains the description of the scripts used to complete the programming assigment for the GETTING AND CLEANING DATA course.
The scrips are:
* Item download_files.R: This script downloads the .zip file
* Item run_analysis.R: This script process the files in the .zip file to produce the desired output.

The assumption is that the file with the measures has been downloaded and uncompressed. 
This script run_analysis.R has to be executed in the root directory of the uncompressed file.

# Description
These are the steps followed to achieve the requirements of the programming assigment.
* Item 1: Load file ~activity_labels.txt in object activity_labels. This data frame relates each activity code with each activity description (e.g 1 with LAYING)
* Item 2: Rename the columns of object activity_labels to "activitycode" and "activitydescription"
* Item 3: Load file ~features.txt in object features. This data frame contains the names of the 561 variables in the train and test datasets.
* Item 4: Rename the column of object features to "featurename".
* Item 5: Load file ~train/X_train.txt in object train_set. Rename the columns of the dataframe using the features object described in the previous step.
* Item 6: Load file ~train/y_train.txt in object train_labels. Rename the column of this dataframe to "activitycode".
* Item 7: Load file ~train/subjet_train.txt in object train_subject Rename the column of is dataframe to "subjet".
* Item 8: Join objects train_set, train_labels and train_subject and create object train.
* Item 9: Load file ~test/X_test.txt in object test_set. Rename the columns of the dataframe using the features object described in the previous step.
* Item 10: Load file ~test/y_test.txt in object test_labels. Rename the column of this dataframe to "activitycode".
* Item 11: Load file ~test/subjet_test.txt in object test_subject. Rename the column of is dataframe to "subjet".
* Item 12: Join objects test_set, test_labels and test_subject and create object test. 
* Item 13: Create object total as the union of objects train and set. Join the result with object activitys_labels using column activitycode as the joinin field
* Item 14: Create vector features_selected with the indexes of those features that are mean and standard desviations. 
* Item 15: Create object total_selected subsettig object total using vector features_selected.
* Item 16: Create object total_melt2 reshaping object total_selected. Write this object in file tidy_step5.txt.

# Codebook
The dataset from file tidy_stepd.txt has the following variables:
* subject: identifier of one of the  30 volunteers. Takes values from 1 to 30.
* activitydescription: type of activity. Takes the following values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS ,WALKING_UPSTAIRS
* tBodyAcc-mean()-X_Mean:  Mean of fe5ature tBodyAcc-mean()-X for the subject and activity. Takes a value between -1 and 1
* tBodyAcc-mean()-Y_Mean:  Mean of feature tBodyAcc-mean()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyAcc-mean()-Z_Mean:  Mean of feature tBodyAcc-mean()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyAcc-std()-X_Mean:  Mean of feature tBodyAcc-std()-X for the subject and activity. Takes a value between -1 and 1
* tBodyAcc-std()-Y_Mean:  Mean of feature tBodyAcc-std()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyAcc-std()-Z_Mean:  Mean of feature tBodyAcc-std()-Z for the subject and activity. Takes a value between -1 and 1
* tGravityAcc-mean()-X_Mean:  Mean of feature tGravityAcc-mean()-X for the subject and activity. Takes a value between -1 and 1
* tGravityAcc-mean()-Y_Mean:  Mean of feature tGravityAcc-mean()-Y for the subject and activity. Takes a value between -1 and 1
* tGravityAcc-mean()-Z_Mean:  Mean of feature tGravityAcc-mean()-Z for the subject and activity. Takes a value between -1 and 1
* tGravityAcc-std()-X_Mean:  Mean of feature tGravityAcc-std()-X for the subject and activity. Takes a value between -1 and 1
* tGravityAcc-std()-Y_Mean:  Mean of feature tGravityAcc-std()-Y for the subject and activity. Takes a value between -1 and 1
* tGravityAcc-std()-Z_Mean:  Mean of feature tGravityAcc-std()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerk-mean()-X_Mean:  Mean of feature tBodyAccJerk-mean()-X for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerk-mean()-Y_Mean:  Mean of feature tBodyAccJerk-mean()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerk-mean()-Z_Mean:  Mean of feature tBodyAccJerk-mean()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerk-std()-X_Mean:  Mean of feature tBodyAccJerk-std()-X for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerk-std()-Y_Mean:  Mean of feature tBodyAccJerk-std()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerk-std()-Z_Mean:  Mean of feature tBodyAccJerk-std()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyGyro-mean()-X_Mean:  Mean of feature tBodyGyro-mean()-X for the subject and activity. Takes a value between -1 and 1
* tBodyGyro-mean()-Y_Mean:  Mean of feature tBodyGyro-mean()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyGyro-mean()-Z_Mean:  Mean of feature tBodyGyro-mean()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyGyro-std()-X_Mean:  Mean of feature tBodyGyro-std()-X for the subject and activity. Takes a value between -1 and 1
* tBodyGyro-std()-Y_Mean:  Mean of feature tBodyGyro-std()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyGyro-std()-Z_Mean:  Mean of feature tBodyGyro-std()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerk-mean()-X_Mean:  Mean of feature tBodyGyroJerk-mean()-X for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerk-mean()-Y_Mean:  Mean of feature tBodyGyroJerk-mean()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerk-mean()-Z_Mean:  Mean of feature tBodyGyroJerk-mean()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerk-std()-X_Mean:  Mean of feature tBodyGyroJerk-std()-X for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerk-std()-Y_Mean:  Mean of feature tBodyGyroJerk-std()-Y for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerk-std()-Z_Mean:  Mean of feature tBodyGyroJerk-std()-Z for the subject and activity. Takes a value between -1 and 1
* tBodyAccMag-mean()_Mean:  Mean of feature tBodyAccMag-mean() for the subject and activity. Takes a value between -1 and 1
* tBodyAccMag-std()_Mean:  Mean of feature tBodyAccMag-std() for the subject and activity. Takes a value between -1 and 1
* tGravityAccMag-mean()_Mean:  Mean of feature tGravityAccMag-mean() for the subject and activity. Takes a value between -1 and 1
* tGravityAccMag-std()_Mean:  Mean of feature tGravityAccMag-std() for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerkMag-mean()_Mean:  Mean of feature tBodyAccJerkMag-mean() for the subject and activity. Takes a value between -1 and 1
* tBodyAccJerkMag-std()_Mean:  Mean of feature tBodyAccJerkMag-std() for the subject and activity. Takes a value between -1 and 1
* tBodyGyroMag-mean()_Mean:  Mean of feature tBodyGyroMag-mean() for the subject and activity. Takes a value between -1 and 1
* tBodyGyroMag-std()_Mean:  Mean of feature tBodyGyroMag-std() for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerkMag-mean()_Mean:  Mean of feature tBodyGyroJerkMag-mean() for the subject and activity. Takes a value between -1 and 1
* tBodyGyroJerkMag-std()_Mean:  Mean of feature tBodyGyroJerkMag-std() for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-mean()-X_Mean:  Mean of feature fBodyAcc-mean()-X for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-mean()-Y_Mean:  Mean of feature fBodyAcc-mean()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-mean()-Z_Mean:  Mean of feature fBodyAcc-mean()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-std()-X_Mean:  Mean of feature fBodyAcc-std()-X for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-std()-Y_Mean:  Mean of feature fBodyAcc-std()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-std()-Z_Mean:  Mean of feature fBodyAcc-std()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-meanFreq()-X_Mean:  Mean of feature fBodyAcc-meanFreq()-X for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-meanFreq()-Y_Mean:  Mean of feature fBodyAcc-meanFreq()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyAcc-meanFreq()-Z_Mean:  Mean of feature fBodyAcc-meanFreq()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-mean()-X_Mean:  Mean of feature fBodyAccJerk-mean()-X for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-mean()-Y_Mean:  Mean of feature fBodyAccJerk-mean()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-mean()-Z_Mean:  Mean of feature fBodyAccJerk-mean()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-std()-X_Mean:  Mean of feature fBodyAccJerk-std()-X for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-std()-Y_Mean:  Mean of feature fBodyAccJerk-std()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-std()-Z_Mean:  Mean of feature fBodyAccJerk-std()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-meanFreq()-X_Mean:  Mean of feature fBodyAccJerk-meanFreq()-X for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-meanFreq()-Y_Mean:  Mean of feature fBodyAccJerk-meanFreq()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyAccJerk-meanFreq()-Z_Mean:  Mean of feature fBodyAccJerk-meanFreq()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-mean()-X_Mean:  Mean of feature fBodyGyro-mean()-X for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-mean()-Y_Mean:  Mean of feature fBodyGyro-mean()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-mean()-Z_Mean:  Mean of feature fBodyGyro-mean()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-std()-X_Mean:  Mean of feature fBodyGyro-std()-X for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-std()-Y_Mean:  Mean of feature fBodyGyro-std()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-std()-Z_Mean:  Mean of feature fBodyGyro-std()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-meanFreq()-X_Mean:  Mean of feature fBodyGyro-meanFreq()-X for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-meanFreq()-Y_Mean:  Mean of feature fBodyGyro-meanFreq()-Y for the subject and activity. Takes a value between -1 and 1
* fBodyGyro-meanFreq()-Z_Mean:  Mean of feature fBodyGyro-meanFreq()-Z for the subject and activity. Takes a value between -1 and 1
* fBodyAccMag-mean()_Mean:  Mean of feature fBodyAccMag-mean() for the subject and activity. Takes a value between -1 and 1
* fBodyAccMag-std()_Mean:  Mean of feature fBodyAccMag-std() for the subject and activity. Takes a value between -1 and 1
* fBodyAccMag-meanFreq()_Mean:  Mean of feature fBodyAccMag-meanFreq() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyAccJerkMag-mean()_Mean:  Mean of feature fBodyBodyAccJerkMag-mean() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyAccJerkMag-std()_Mean:  Mean of feature fBodyBodyAccJerkMag-std() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyAccJerkMag-meanFreq()_Mean:  Mean of feature fBodyBodyAccJerkMag-meanFreq() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyGyroMag-mean()_Mean:  Mean of feature fBodyBodyGyroMag-mean() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyGyroMag-std()_Mean:  Mean of feature fBodyBodyGyroMag-std() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyGyroMag-meanFreq()_Mean:  Mean of feature fBodyBodyGyroMag-meanFreq() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyGyroJerkMag-mean()_Mean:  Mean of feature fBodyBodyGyroJerkMag-mean() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyGyroJerkMag-std()_Mean:  Mean of feature fBodyBodyGyroJerkMag-std() for the subject and activity. Takes a value between -1 and 1
* fBodyBodyGyroJerkMag-meanFreq()_Mean:  Mean of feature fBodyBodyGyroJerkMag-meanFreq() for the subject and activity. Takes a value between -1 and 1

