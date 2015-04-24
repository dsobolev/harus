#names(feature_values) <- needed$V2 -> give names to features

#used to get merged set of training and test data
#depends on file structure provided by Samsung
merge_test_train <- function(value) {
  test_path <- paste("./data/test/", value, "_test.txt", sep = "")
  train_path <- paste("./data/train/", value, "_train.txt", sep = "")
  test_data <- read.table(test_path)
  train_data <- read.table(train_path)
  
  rbind(test_data, train_data)
}

# get full sets of subjects, activities and features' values
subjects <- merge_test_train("subject")
activity_vals <- merge_test_train("y")
feature_vals <- merge_test_train("X")

# load & process features labels
feature_labels <- read.table("./data/features.txt")
feature_selected_labels <- feature_labels[grep("-(std|mean)\\(", feature_labels$V2), ]

# transform features to select values from feature_vals
feature_selected_labels$V1 <- paste("V", feature_selected_labels$V1, sep = "")

#form data set for selected features' values with proper labels
feature_vals <- feature_vals[ ,feature_selected_labels$V1]
names(feature_vals) <- feature_selected_labels$V2
rm(feature_labels, feature_selected_labels)

#get full merged data set
data_set <- cbind("Subject" = subjects$V1, "Activity" = activity_vals$V1, feature_vals)
rm(subjects, activity_vals, feature_vals)

data_set <- data_set[order(data_set$Subject, data_set$Activity), ]

#merge activity and features
#read.table("./data/test/y_test.txt") -> test_act
#merged_y_x <- cbind("Activity" = test_act[[1]], test_val)

#change activity names
#act_labels <- read.table("./data/activity_labels.txt")
#merged_y_x$Activity <- sapply(merged_y_x$Activity, function(x){ act_labels[act_labels$V1 == x, "V2"]})

