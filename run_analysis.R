# STEP 1: Merges the training and the test sets to create one data set.

# load the activity labels
activity_labels <- read.csv("./activity_labels.txt", header = FALSE, sep=" ")
colnames(activity_labels) <- c("activitycode","activitydescription")
features <- read.csv("./features.txt", header = FALSE, stringsAsFactors = FALSE, sep=" ")
colnames(features) <- c("featureid","featurename")

# work with the train and test sets
#- 'features.txt': List of all features.
#- 'activity_labels.txt': Links the class labels with their activity name.
#- 'train/X_train.txt': Training set.
#- 'train/y_train.txt': Training labels.
#- 'test/X_test.txt': Test set.
#- 'test/y_test.txt': Test labels.

# train set
train_set <- read.table("./train/X_train.txt", header=FALSE, strip.white=TRUE)
colnames(train_set) <- features$featurename
train_labels <- read.csv("./train/y_train.txt", header = FALSE)
colnames(train_labels) <- c("activitycode")
train_subjects <- read.csv("./train/subject_train.txt", header = FALSE)
colnames(train_subjects) <- c("subject")
train <- cbind(train_subjects, train_labels, train_set)
rownames(train) <- NULL
# test set
test_set <- read.table("./test/X_test.txt", header=FALSE, strip.white=TRUE)
colnames(test_set) <- features$featurename
test_labels <- read.csv("./test/y_test.txt", header = FALSE)
colnames(test_labels) <- c("activitycode")
test_subjects <- read.csv("./test/subject_test.txt", header = FALSE)
colnames(test_subjects) <- c("subject")
test <- cbind(test_subjects, test_labels, test_set)
rownames(test) <- NULL

# STEP 3: Uses descriptive activity names to name the activities in the data set
# join both sets and add the activity labels
total <- join(rbind(train, test), activity_labels)

# STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
# get all means and std
means_index <- grep("mean", features$featurename)
std_index <- grep("std", features$featurename)
indexes <- sort(c(means_index, std_index))
# vector with all features that are means or std
features_selected <-features[indexes, 2]
# subseting from the dataframe with all features only the selected features

# STEP 4: Appropriately labels the data set with descriptive variable names. 
total_selected = total[, c("subject", "activitydescription", features_selected)]

# STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
# Get the means of the selected features per subject and per activity
library("reshape2")
total_melt <- melt(total_selected, id=c("subject", "activitydescription"), measure.vars=features_selected)
total_melt2 <- dcast(total_melt, "subject + activitydescription ~ variable", mean)
# write the output
write.table(total_melt2, file ="./tidy_step5.txt", row.name=FALSE)
