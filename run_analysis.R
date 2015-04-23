#load features info
feature_labels <- read.table("./data/features.txt")
feature_selected <- feature_labels[grep("-(std|mean)\\(", feature_labels$V2), ]

# transform features to select values from features (x_...)
feature_selected$V1 <- paste("V", feature_selected$V1, sep = "")
#---------------------

#names(feature_values) <- needed$V2 -> give names to features

#read values needed
test_feat_data <- read.table("./data/test/X_text.txt")
train_feat_data <- read.table("./data/test/X_train.txt")

#merge

#"select" features_to_show with features values (x_...)
feat_val[, needed$V1]

#merge activity and features
read.table("./data/test/y_test.txt") -> test_act
merged_y_x <- cbind("Activity" = test_act[[1]], test_val)

#change activity names
act_labels <- read.table("./data/activity_labels.txt")

