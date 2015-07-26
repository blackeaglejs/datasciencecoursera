# Codebook
## A Few Quick Notes
There are two main types of signals in this dataset. One is time signals, which is the vast majority and is designated by a "t" as the first letter of the variable name. The other is frequency signals, which are Fourier transformed version's of the time signals and are disgnated by a "f" as the first variable name. 

Signals came from both an accelerometer in the device as well as a gyroscope, both of which provide data about location. 

Variables ending in X,Y, and Z are three-dimensional signals from the accelerometer or gyroscope that have been averaged out from the total observations.

The magnitude (or strength) of the various signals has also been provided in variables with the string "Mag."

Jerk signals are a subset of both frequency and time signals and were derived from linear acceleration of the body and angular momentum.  
 
### Subject
The participant in the study.                  
### Activity
Categorical variable indicating what activity participant was doing while being measured.
                
### tBodyAccmeanX,Y, Z            
Body acceleration time signal's mean as measured by the accelerometer in X, Y, and Z dimensions. 
            
### tBodyAccstdX,Y, Z
Body acceleration time signal's standard deviation as measured by the accelerometer in X, Y, and Z dimensions.
                     
### tGravityAccmeanX,Y, Z
Gravity acceleration time signal's mean as measured by the accelerometer in X, Y, and Z dimensions.

### tGravityAccstdX,Y, Z         
Gravity acceleration time signal's standard deviation as measured by the accelerometer in X, Y, and Z dimensions.
         
### tBodyAccJerkmeanX,Y, Z        
Body acceleration jerk signal's mean as measured by the accelerometer in X, Y, and Z dimensions.
       
### tBodyAccJerkstdX,Y, Z        
Body acceleration jerk signal's standard deviation as measured by the accelerometer in X, Y, and Z dimensions.
      
### tBodyGyromeanX,Y, Z           
Body acceleration time signal's mean as measured by the gyroscope in X, Y, and Z dimensions.
           
### tBodyGyrostdX,Y, Z           
Body acceleration time signal's standard deviation as measured by the gyroscope in X, Y, and Z dimensions.
           
### tBodyGyroJerkmeanX,Y, Z       
Body acceleration jerk signal's mean as measured by the gyroscope in X, Y, and Z dimensions.
       
### tBodyGyroJerkstdX,Y, Z       
Body acceleration jerk signal's standard deviation as measured by the gyroscope in X, Y, and Z dimensions.
       
### tBodyAccMagmean
Body acceleration time signal magnitude's mean as measured by the accelerometer.
           
### tBodyAccMagstd
Body acceleration time signal magnitude's standard deviation as measured by the accelerometer.
          
### tGravityAccMagmean
Gravity acceleration time signal magnitude's mean as measured by the accelerometer.
       
### tGravityAccMagstd
Gravity acceleration time signal magnitude's standard deviation as measured by the accelerometer.
       
### tBodyAccJerkMagmean      
Body acceleration jerk signal magnitude's mean as measured by the accelerometer.

### tBodyAccJerkMagstd      
Body acceleration jerk signal magnitude's standard deviation as measured by the accelerometer.
 
### tBodyGyroMagmean
Body acceleration time signal magnitude's mean as measured by the gyroscope. 
         
### tBodyGyroMagstd         
Body acceleration time signal magnitude's standard deviation as measured by the gyroscope.

### tBodyGyroJerkMagmean     
Body acceleration jerk signal magnitude's mean as measured by the gyroscope. 

### tBodyGyroJerkMagstd
Body acceleration jerk signal magnitude's standard deviation as measured by the gyroscope. 
     
### fBodyAccmeanX,Y, Z
Body acceleration frequency signal's mean as measured by the accelerometer in X, Y, and Z dimensions.        
            
### fBodyAccstdX,Y, Z            
Body acceleration frequency signal's standard deviation as measured by the accelerometer in X,Y, and Z dimensions.             

### fBodyAccJerkmeanX,Y, Z
Body jerk acceleration frequency signal's mean as measured by the accelerometer in X, Y, and Z dimensions.        
        
### fBodyAccJerkstdX,Y, Z
Body jerk acceleration frequency signal's standard deviation as measured by the accelerometer in X, Y, and Z dimensions.        
       
### fBodyGyromeanX,Y, Z
Body acceleration frequency signal's mean as measured by the gyroscope in X, Y, and Z dimensions.           
           
### fBodyGyrostdX,Y, Z
Body acceleration frequency signal's standard deviation as measured by the gyroscope in X, Y, and Z dimensions.           
           
### fBodyAccMagmean
Body acceleration frequency signal magnitude's mean as measured by the accelerometer.
          
### fBodyAccMagstd          
Body acceleration frequency signal magnitude's standard deviation as measured by the accelerometer.

### fBodyBodyAccJerkMagmean  
Body jerk acceleration frequency signal magnitude's mean as measured by the accelerometer.

### fBodyBodyAccJerkMagstd  
Body jerk acceleration frequency signal magnitude's standard deviation as measured by the accelerometer.

### fBodyBodyGyroMagmean
Body acceleration frequency signal magnitude's mean as measured by the gyroscope. 
     
### fBodyBodyGyroMagstd
Body acceleration frequency signal magnitude's standard deviation as measured by the gyroscope. 
     
### fBodyBodyGyroJerkMagmean
Body jerk acceleration frequency signal magnitude's mean as measured by the gyroscope.
  
### fBodyBodyGyroJerkMagstd
Body jerk accelereration frequency signal magnitude's men as measured by the gyroscope. 