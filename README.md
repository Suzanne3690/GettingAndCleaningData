# Getting And Cleaning Data: Course Project 


## Merging the test and train datasets:

 
#### Subjects: 30 volunteers aged 19-48

UCI HAR Dataset/test/subject\_test.txt   
UCI HAR Dataset/train/subject\_train.txt   
Merged to a vector (subject) of length 10299  


#### Activity labels : 1 - 6

UCI HAR Dataset/test/y\_test.txt  
UCI HAR Dataset/train/y\_train.txt  
Merged to a vector (activity) of length 10299  
Activities are recoded with descriptive labels:

* 1 = walking
* 2 = walking\_upstairs
* 3 = walking\_downstairs
* 4 = sitting
* 5 = standing
* 6 = laying


#### Features: 561 variables (detailed description given in Features561.txt)

UCI HAR Dataset/test/X\_test.txt  
UCI HAR Dataset/train/X\_train.txt  
Merged to a data frame (X) of 10299 rows and 561 columns.


## Variable selection
The names of the 561 variables are read from UCI HAR Dataset/features.txt  
Variables which are measurements of mean or standard deviation are identified by index.  
These 86 variables are selected from the merged data frame X.  
Variable names are left unchanged apart from replacement of unwanted characters:

* "()" replaced with ""
* "("  replaced with "\_"
* ")"  replaced with ""
* "\-" replaced with "\_"
* ","  replaced with "\_"


## Final merge and summary  
The subjects, activities and 86 selected features are merged into a single data frame of 10299 rows and 88 columns.  
Features are summarized by subject and activity as mean values.  
Summarized as data frame of 180 rows and 88 columns.  
Saved as "tidy\_data.txt"
 

## Codebook

* Time-domain features are denoted by t
* Frequency-domain features are denoted by f
* X, Y, Z denote axial signal direction
* Frequency-domain features also include a frequency-weighted mean (meanFreq)
* Features are normalized and bounded within [-1,1]
* (Original raw measurements in gravity units 'g' (accelerometer) and radians/second (gyroscope))


 1   Subject 	(values 1-30)  
 2   Activity 	(walking, walking\_upstairs, walking\_downstairs, sitting, standing, laying)  
 3   tBodyAcc\_mean\_X   
 4   tBodyAcc\_mean\_Y   
 5   tBodyAcc\_mean\_Z   
 6   tBodyAcc\_std\_X   
 7   tBodyAcc\_std\_Y   
 8   tBodyAcc\_std\_Z  
 9   tGravityAcc\_mean\_X   
 10   tGravityAcc\_mean\_Y   
 11   tGravityAcc\_mean\_Z   
 12   tGravityAcc\_std\_X   
 13   tGravityAcc\_std\_Y   
 14   tGravityAcc\_std\_Z   
 15   tBodyAccJerk\_mean\_X   
 16   tBodyAccJerk\_mean\_Y   
 17   tBodyAccJerk\_mean\_Z   
 18   tBodyAccJerk\_std\_X   
 19   tBodyAccJerk\_std\_Y   
 20   tBodyAccJerk\_std\_Z   
 21   tBodyGyro\_mean\_X   
 22   tBodyGyro\_mean\_Y   
 23   tBodyGyro\_mean\_Z   
 24   tBodyGyro\_std\_X   
 25   tBodyGyro\_std\_Y   
 26   tBodyGyro\_std\_Z   
 27   tBodyGyroJerk\_mean\_X   
 28   tBodyGyroJerk\_mean\_Y   
 29   tBodyGyroJerk\_mean\_Z   
 30   tBodyGyroJerk\_std\_X   
 31   tBodyGyroJerk\_std\_Y   
 32   tBodyGyroJerk\_std\_Z   
 33   tBodyAccMag\_mean   
 34   tBodyAccMag\_std   
 35   tGravityAccMag\_mean   
 36   tGravityAccMag\_std   
 37   tBodyAccJerkMag\_mean   
 38   tBodyAccJerkMag\_std   
 39   tBodyGyroMag\_mean   
 40   tBodyGyroMag\_std   
 41   tBodyGyroJerkMag\_mean   
 42   tBodyGyroJerkMag\_std   
 43   fBodyAcc\_mean\_X   
 44   fBodyAcc\_mean\_Y   
 45   fBodyAcc\_mean\_Z   
 46   fBodyAcc\_std\_X   
 47   fBodyAcc\_std\_Y   
 48   fBodyAcc\_std\_Z   
 49   fBodyAcc\_meanFreq\_X   
 50   fBodyAcc\_meanFreq\_Y   
 51   fBodyAcc\_meanFreq\_Z   
 52   fBodyAccJerk\_mean\_X   
 53   fBodyAccJerk\_mean\_Y   
 54   fBodyAccJerk\_mean\_Z   
 55   fBodyAccJerk\_std\_X   
 56   fBodyAccJerk\_std\_Y   
 57   fBodyAccJerk\_std\_Z   
 58   fBodyAccJerk\_meanFreq\_X   
 59   fBodyAccJerk\_meanFreq\_Y   
 60   fBodyAccJerk\_meanFreq\_Z   
 61   fBodyGyro\_mean\_X   
 62   fBodyGyro\_mean\_Y   
 63   fBodyGyro\_mean\_Z   
 64   fBodyGyro\_std\_X   
 65   fBodyGyro\_std\_Y   
 66   fBodyGyro\_std\_Z   
 67   fBodyGyro\_meanFreq\_X   
 68   fBodyGyro\_meanFreq\_Y   
 69   fBodyGyro\_meanFreq\_Z   
 70   fBodyAccMag\_mean   
 71   fBodyAccMag\_std   
 72   fBodyAccMag\_meanFreq   
 73   fBodyBodyAccJerkMag\_mean   
 74   fBodyBodyAccJerkMag\_std   
 75   fBodyBodyAccJerkMag\_meanFreq   
 76   fBodyBodyGyroMag\_mean   
 77   fBodyBodyGyroMag\_std   
 78   fBodyBodyGyroMag\_meanFreq   
 79   fBodyBodyGyroJerkMag\_mean   
 80   fBodyBodyGyroJerkMag\_std   
 81   fBodyBodyGyroJerkMag\_meanFreq   
 82   angle\_tBodyAccMean\_gravity   
 83   angle\_tBodyAccJerkMean\_gravityMean   
 84   angle\_tBodyGyroMean\_gravityMean   
 85   angle\_tBodyGyroJerkMean\_gravityMean   
 86   angle\_X\_gravityMean   
 87   angle\_Y\_gravityMean   
 88   angle\_Z\_gravityMean   
