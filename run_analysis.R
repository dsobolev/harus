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

# load features info
feature_labels <- read.table("./data/features.txt")
feature_selected_labels <- feature_labels[grep("-(std|mean)\\(", feature_labels$V2), ]

# transform features to select values from feature_vals
# ()
feature_selected_labels$V1 <- paste("V", feature_selected$V1, sep = "")



#merge

#"select" features_to_show with features values (x_...)
#feat_val[, needed$V1]

#merge activity and features
#read.table("./data/test/y_test.txt") -> test_act
#merged_y_x <- cbind("Activity" = test_act[[1]], test_val)

#change activity names
#act_labels <- read.table("./data/activity_labels.txt")
#merged_y_x$Activity <- sapply(merged_y_x$Activity, function(x){ act_labels[act_labels$V1 == x, "V2"]})

