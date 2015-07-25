## Import the test data
## Note that all data should be in the same directory instead of the folder structure it came in.
x_test <- "X_test.txt"
x_test_data <- read.table(x_test, sep = "")

y_test <- "y_test.csv"
y_test_data <- read.table(y_test, sep = "")

test_data <- cbind(x_test_data,y_test_data)

## Import the training data
x_train <- "X_train.txt"
x_train_data <- read.table(x_train, sep = "")

y_train <- "y_train.txt"
y_train_data <- read.table(y_train, sep = "")

train_data <- cbind(x_train_data,y_train_data)

## Merge The test and training data together. 
rbind(test_data,train_data)