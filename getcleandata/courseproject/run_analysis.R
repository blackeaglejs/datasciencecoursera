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

## Eliminate variables that are not means or standard deviation.
all_data_msd <- all_data[c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543,562:563)]

## Name variables descriptively. 
## To simplify this, given the number of variables, I created 
## a separate text file called NarrowVarNames.txt with 
## the new variable names.
msd_var_names <- read.table("NarrowVarNames.txt", sep = "")
colnames(all_data_msd) <- msd_var_names$V1

## Create tidy data set which calculates mean of each tidy variable based on (1) subject and (2) activity.
