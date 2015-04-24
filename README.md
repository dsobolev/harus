# harus
Human Activity Recognition Using Smartphones

Data from [here](
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) were used

All calculations are in the same file.
Just plain R is used with no external packages.

####Steps were done:

1. Full data sets were made from "test" and "train" sets for each variable (subject, activity, features). "merge_test_train" function was used for each merge
2. Features data set were transformed to get data set with just "std" (standart deviation) and "mean" (avarage) values for each measurement. It was labeled with proper measurement name
3. All three data sets were merged to get full data set. The last one were ordered by Subject and Activity fields
4. Activity ID's were changed to it's labels in full data set
5. The result data set were made by aggregation
