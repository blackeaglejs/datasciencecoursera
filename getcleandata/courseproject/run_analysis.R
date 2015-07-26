## Import the test data
## Note that all data should be in the same directory instead of the folder structure it came in.
x_test <- "X_test.txt"
x_test_data <- read.table(x_test, sep = "")

y_test <- "y_test.txt"
y_test_data <- read.table(y_test, sep = "")

test_data <- cbind(x_test_data,y_test_data)

subject_test <- "subject_test.txt"
subject_test_data <- read.table(subject_test, sep = "")

test_data <- cbind(test_data, subject_test_data)

## Import the training data
x_train <- "X_train.txt"
x_train_data <- read.table(x_train, sep = "")

y_train <- "y_train.txt"
y_train_data <- read.table(y_train, sep = "")

train_data <- cbind(x_train_data,y_train_data)

subject_train <- "subject_train.txt"
subject_train_data <- read.table(subject_train, sep = "")

train_data <- cbind(train_data, subject_train_data)

## Merge The test and training data together. 
all_data <- rbind(test_data,train_data)

## Pull in the variable names from the data.
colnamesfile <- read.table("features.txt")
colnames <- colnamesfile$V2
colnames(all_data) <- colnames
names(all_data)[562] <- "activity"
names(all_data)[563] <- "subject"

## Replace the activity codes with their actual names. 
all_data$activity <- ifelse(all_data$activity ==1, "walking", all_data$activity)
all_data$activity <- ifelse(all_data$activity ==2, "walking upstairs", all_data$activity)
all_data$activity <- ifelse(all_data$activity ==3, "walking downstairs", all_data$activity)
all_data$activity <- ifelse(all_data$activity ==4, "sitting", all_data$activity)
all_data$activity <- ifelse(all_data$activity ==5, "standing", all_data$activity)
all_data$activity <- ifelse(all_data$activity ==6, "laying", all_data$activity)
