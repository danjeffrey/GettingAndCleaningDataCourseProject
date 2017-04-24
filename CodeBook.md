## CodeBook for run_analysis.R

### Variables
* Gyroscope Variables are in radians/second. 
* Accelerometer is calculated by subtracting gravity from total acceleration, meters per second squared.
* Values are either Time or Frequency.
* All values are a mean or standard deviation (std)
* X,Y, and Z represents axis of measurement. 

 [1] "TimeBodyAccelerometer-mean()-X"                             
 [2] "TimeBodyAccelerometer-mean()-Y"                             
 [3] "TimeBodyAccelerometer-mean()-Z"                             
 [4] "TimeBodyAccelerometer-std()-X"                              
 [5] "TimeBodyAccelerometer-std()-Y"                              
 [6] "TimeBodyAccelerometer-std()-Z"                              
 [7] "TimeGravityAccelerometer-mean()-X"                          
 [8] "TimeGravityAccelerometer-mean()-Y"                          
 [9] "TimeGravityAccelerometer-mean()-Z"                          
[10] "TimeGravityAccelerometer-std()-X"                           
[11] "TimeGravityAccelerometer-std()-Y"                           
[12] "TimeGravityAccelerometer-std()-Z"                           
[13] "TimeBodyAccelerometerJerk-mean()-X"                         
[14] "TimeBodyAccelerometerJerk-mean()-Y"                         
[15] "TimeBodyAccelerometerJerk-mean()-Z"                         
[16] "TimeBodyAccelerometerJerk-std()-X"                          
[17] "TimeBodyAccelerometerJerk-std()-Y"                          
[18] "TimeBodyAccelerometerJerk-std()-Z"                          
[19] "TimeBodyGyroscope-mean()-X"                                 
[20] "TimeBodyGyroscope-mean()-Y"                                 
[21] "TimeBodyGyroscope-mean()-Z"                                 
[22] "TimeBodyGyroscope-std()-X"                                  
[23] "TimeBodyGyroscope-std()-Y"                                  
[24] "TimeBodyGyroscope-std()-Z"                                  
[25] "TimeBodyGyroscopeJerk-mean()-X"                             
[26] "TimeBodyGyroscopeJerk-mean()-Y"                             
[27] "TimeBodyGyroscopeJerk-mean()-Z"                             
[28] "TimeBodyGyroscopeJerk-std()-X"                              
[29] "TimeBodyGyroscopeJerk-std()-Y"                              
[30] "TimeBodyGyroscopeJerk-std()-Z"                              
[31] "TimeBodyAccelerometerMagnitude-mean()"                      
[32] "TimeBodyAccelerometerMagnitude-std()"                       
[33] "TimeGravityAccelerometerMagnitude-mean()"                   
[34] "TimeGravityAccelerometerMagnitude-std()"                    
[35] "TimeBodyAccelerometerJerkMagnitude-mean()"                  
[36] "TimeBodyAccelerometerJerkMagnitude-std()"                   
[37] "TimeBodyGyroscopeMagnitude-mean()"                          
[38] "TimeBodyGyroscopeMagnitude-std()"                           
[39] "TimeBodyGyroscopeJerkMagnitude-mean()"                      
[40] "TimeBodyGyroscopeJerkMagnitude-std()"                       
[41] "FrequencyBodyAccelerometer-mean()-X"                        
[42] "FrequencyBodyAccelerometer-mean()-Y"                        
[43] "FrequencyBodyAccelerometer-mean()-Z"                        
[44] "FrequencyBodyAccelerometer-std()-X"                         
[45] "FrequencyBodyAccelerometer-std()-Y"                         
[46] "FrequencyBodyAccelerometer-std()-Z"                         
[47] "FrequencyBodyAccelerometer-meanFreq()-X"                    
[48] "FrequencyBodyAccelerometer-meanFreq()-Y"                    
[49] "FrequencyBodyAccelerometer-meanFreq()-Z"                    
[50] "FrequencyBodyAccelerometerJerk-mean()-X"                    
[51] "FrequencyBodyAccelerometerJerk-mean()-Y"                    
[52] "FrequencyBodyAccelerometerJerk-mean()-Z"                    
[53] "FrequencyBodyAccelerometerJerk-std()-X"                     
[54] "FrequencyBodyAccelerometerJerk-std()-Y"                     
[55] "FrequencyBodyAccelerometerJerk-std()-Z"                     
[56] "FrequencyBodyAccelerometerJerk-meanFreq()-X"                
[57] "FrequencyBodyAccelerometerJerk-meanFreq()-Y"                
[58] "FrequencyBodyAccelerometerJerk-meanFreq()-Z"                
[59] "FrequencyBodyGyroscope-mean()-X"                            
[60] "FrequencyBodyGyroscope-mean()-Y"                            
[61] "FrequencyBodyGyroscope-mean()-Z"                            
[62] "FrequencyBodyGyroscope-std()-X"                             
[63] "FrequencyBodyGyroscope-std()-Y"                             
[64] "FrequencyBodyGyroscope-std()-Z"                             
[65] "FrequencyBodyGyroscope-meanFreq()-X"                        
[66] "FrequencyBodyGyroscope-meanFreq()-Y"                        
[67] "FrequencyBodyGyroscope-meanFreq()-Z"                        
[68] "FrequencyBodyAccelerometerMagnitude-mean()"                 
[69] "FrequencyBodyAccelerometerMagnitude-std()"                  
[70] "FrequencyBodyAccelerometerMagnitude-meanFreq()"             
[71] "FrequencyBodyAccelerometerJerkMagnitude-mean()"             
[72] "FrequencyBodyAccelerometerJerkMagnitude-std()"              
[73] "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()"         
[74] "FrequencyBodyGyroscopeMagnitude-mean()"                     
[75] "FrequencyBodyGyroscopeMagnitude-std()"                      
[76] "FrequencyBodyGyroscopeMagnitude-meanFreq()"                 
[77] "FrequencyBodyGyroscopeJerkMagnitude-mean()"                 
[78] "FrequencyBodyGyroscopeJerkMagnitude-std()"                  
[79] "FrequencyBodyGyroscopeJerkMagnitude-meanFreq()"             
[80] "AngularVelocity(TimeBodyAccelerometerMean,gravity)"         
[81] "AngularVelocity(TimeBodyAccelerometerJerkMean),gravityMean)"
[82] "AngularVelocity(TimeBodyGyroscopeMean,gravityMean)"         
[83] "AngularVelocity(TimeBodyGyroscopeJerkMean,gravityMean)"     
[84] "AngularVelocity(X,gravityMean)"                             
[85] "AngularVelocity(Y,gravityMean)"                             
[86] "AngularVelocity(Z,gravityMean)"                             
[87] "subject"                                                    
[88] "activity"   

### Subject & Activity
subject: the subject's ID number
activity: the activity name

ACTIVITIES:
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

### Data
From:
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Smartlab - Non Linear Complex Systems Laboratory

Data is from experiements done on 30 volunteer subjects, performing 6 activities while wearing a Samsung Galaxy S II. The data is produced from various sensors and combinations of the sensors while performing the activities. 

Original Data from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original Downloaded File: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data read into R process:
activity_labels.txt
features.txt
features_info.txt
X_train.txt
y_train.txt
subject_train.txt
subject_test.txt
X_test.txt
y_test.txt

### Transformations

The data above is merged into one tidy data set, making the tests with subject number and activity into one data set. The variables have been subset to include only tests involving a mean or standard deviation, names have been changed to be more readable, the activity has been changed from an integer to a string, and dataset called tidydataset.txt is written for the mean of each variable by subject and activity.   

### Output
tidydataset.txt


