###Variables
1. Subject.Id - integer , read from test/subject_test.txt and train/subject_train.txt
2. Activity.Code - character, read from test/y_test.txt and train/y_train.txt
3. Activity.Label - character, text equivalent of activity code taken from activity_labels.txt



###Other data variables

-The mean and standard deviation variables, taken from "features.txt"
-Parenthesis and hyphens are not allowed for data frame names so these were substituted with "."
-Original variable names are in the second column


|Variable.Names                  |Original.Variable.Names         |Units                    |
|:-------------------------------|:-------------------------------|:------------------------|
|Subject.Id                      |Subject.Id                      |                         |
|Activity.Code                   |Activity.Code                   |                         |
|Activity.Label                  |Activity.Label                  |                         |
|tBodyAcc.mean...X               |tBodyAcc.mean()-X               |standard gravity units g |
|tBodyAcc.mean...Y               |tBodyAcc.mean()-Y               |standard gravity units g |
|tBodyAcc.mean...Z               |tBodyAcc.mean()-Z               |standard gravity units g |
|tGravityAcc.mean...X            |tGravityAcc.mean()-X            |standard gravity units g |
|tGravityAcc.mean...Y            |tGravityAcc.mean()-Y            |standard gravity units g |
|tGravityAcc.mean...Z            |tGravityAcc.mean()-Z            |standard gravity units g |
|tBodyAccJerk.mean...X           |tBodyAccJerk.mean()-X           |standard gravity units g |
|tBodyAccJerk.mean...Y           |tBodyAccJerk.mean()-Y           |standard gravity units g |
|tBodyAccJerk.mean...Z           |tBodyAccJerk.mean()-Z           |standard gravity units g |
|tBodyGyro.mean...X              |tBodyGyro.mean()-X              |radians / second         |
|tBodyGyro.mean...Y              |tBodyGyro.mean()-Y              |radians / second         |
|tBodyGyro.mean...Z              |tBodyGyro.mean()-Z              |radians / second         |
|tBodyGyroJerk.mean...X          |tBodyGyroJerk.mean()-X          |radians / second         |
|tBodyGyroJerk.mean...Y          |tBodyGyroJerk.mean()-Y          |radians / second         |
|tBodyGyroJerk.mean...Z          |tBodyGyroJerk.mean()-Z          |radians / second         |
|tBodyAccMag.mean..              |tBodyAccMag.mean()              |standard gravity units g |
|tGravityAccMag.mean..           |tGravityAccMag.mean()           |standard gravity units g |
|tBodyAccJerkMag.mean..          |tBodyAccJerkMag.mean()          |standard gravity units g |
|tBodyGyroMag.mean..             |tBodyGyroMag.mean()             |radians / second         |
|tBodyGyroJerkMag.mean..         |tBodyGyroJerkMag.mean()         |radians / second         |
|fBodyAcc.mean...X               |fBodyAcc.mean()-X               |standard gravity units g |
|fBodyAcc.mean...Y               |fBodyAcc.mean()-Y               |standard gravity units g |
|fBodyAcc.mean...Z               |fBodyAcc.mean()-Z               |standard gravity units g |
|fBodyAcc.meanFreq...X           |fBodyAcc.meanFreq()-X           |standard gravity units g |
|fBodyAcc.meanFreq...Y           |fBodyAcc.meanFreq()-Y           |standard gravity units g |
|fBodyAcc.meanFreq...Z           |fBodyAcc.meanFreq()-Z           |standard gravity units g |
|fBodyAccJerk.mean...X           |fBodyAccJerk.mean()-X           |standard gravity units g |
|fBodyAccJerk.mean...Y           |fBodyAccJerk.mean()-Y           |standard gravity units g |
|fBodyAccJerk.mean...Z           |fBodyAccJerk.mean()-Z           |standard gravity units g |
|fBodyAccJerk.meanFreq...X       |fBodyAccJerk.meanFreq()-X       |standard gravity units g |
|fBodyAccJerk.meanFreq...Y       |fBodyAccJerk.meanFreq()-Y       |standard gravity units g |
|fBodyAccJerk.meanFreq...Z       |fBodyAccJerk.meanFreq()-Z       |standard gravity units g |
|fBodyGyro.mean...X              |fBodyGyro.mean()-X              |radians / second         |
|fBodyGyro.mean...Y              |fBodyGyro.mean()-Y              |radians / second         |
|fBodyGyro.mean...Z              |fBodyGyro.mean()-Z              |radians / second         |
|fBodyGyro.meanFreq...X          |fBodyGyro.meanFreq()-X          |radians / second         |
|fBodyGyro.meanFreq...Y          |fBodyGyro.meanFreq()-Y          |radians / second         |
|fBodyGyro.meanFreq...Z          |fBodyGyro.meanFreq()-Z          |radians / second         |
|fBodyAccMag.mean..              |fBodyAccMag.mean()              |standard gravity units g |
|fBodyAccMag.meanFreq..          |fBodyAccMag.meanFreq()          |standard gravity units g |
|fBodyBodyAccJerkMag.mean..      |fBodyBodyAccJerkMag.mean()      |standard gravity units g |
|fBodyBodyAccJerkMag.meanFreq..  |fBodyBodyAccJerkMag.meanFreq()  |standard gravity units g |
|fBodyBodyGyroMag.mean..         |fBodyBodyGyroMag.mean()         |radians / second         |
|fBodyBodyGyroMag.meanFreq..     |fBodyBodyGyroMag.meanFreq()     |radians / second         |
|fBodyBodyGyroJerkMag.mean..     |fBodyBodyGyroJerkMag.mean()     |radians / second         |
|fBodyBodyGyroJerkMag.meanFreq.. |fBodyBodyGyroJerkMag.meanFreq() |radians / second         |
|tBodyAcc.std...X                |tBodyAcc.std()-X                |standard gravity units g |
|tBodyAcc.std...Y                |tBodyAcc.std()-Y                |standard gravity units g |
|tBodyAcc.std...Z                |tBodyAcc.std()-Z                |standard gravity units g |
|tGravityAcc.std...X             |tGravityAcc.std()-X             |standard gravity units g |
|tGravityAcc.std...Y             |tGravityAcc.std()-Y             |standard gravity units g |
|tGravityAcc.std...Z             |tGravityAcc.std()-Z             |standard gravity units g |
|tBodyAccJerk.std...X            |tBodyAccJerk.std()-X            |standard gravity units g |
|tBodyAccJerk.std...Y            |tBodyAccJerk.std()-Y            |standard gravity units g |
|tBodyAccJerk.std...Z            |tBodyAccJerk.std()-Z            |standard gravity units g |
|tBodyGyro.std...X               |tBodyGyro.std()-X               |radians / second         |
|tBodyGyro.std...Y               |tBodyGyro.std()-Y               |radians / second         |
|tBodyGyro.std...Z               |tBodyGyro.std()-Z               |radians / second         |
|tBodyGyroJerk.std...X           |tBodyGyroJerk.std()-X           |radians / second         |
|tBodyGyroJerk.std...Y           |tBodyGyroJerk.std()-Y           |radians / second         |
|tBodyGyroJerk.std...Z           |tBodyGyroJerk.std()-Z           |radians / second         |
|tBodyAccMag.std..               |tBodyAccMag.std()               |standard gravity units g |
|tGravityAccMag.std..            |tGravityAccMag.std()            |standard gravity units g |
|tBodyAccJerkMag.std..           |tBodyAccJerkMag.std()           |standard gravity units g |
|tBodyGyroMag.std..              |tBodyGyroMag.std()              |radians / second         |
|tBodyGyroJerkMag.std..          |tBodyGyroJerkMag.std()          |radians / second         |
|fBodyAcc.std...X                |fBodyAcc.std()-X                |standard gravity units g |
|fBodyAcc.std...Y                |fBodyAcc.std()-Y                |standard gravity units g |
|fBodyAcc.std...Z                |fBodyAcc.std()-Z                |standard gravity units g |
|fBodyAccJerk.std...X            |fBodyAccJerk.std()-X            |standard gravity units g |
|fBodyAccJerk.std...Y            |fBodyAccJerk.std()-Y            |standard gravity units g |
|fBodyAccJerk.std...Z            |fBodyAccJerk.std()-Z            |standard gravity units g |
|fBodyGyro.std...X               |fBodyGyro.std()-X               |radians / second         |
|fBodyGyro.std...Y               |fBodyGyro.std()-Y               |radians / second         |
|fBodyGyro.std...Z               |fBodyGyro.std()-Z               |radians / second         |
|fBodyAccMag.std..               |fBodyAccMag.std()               |standard gravity units g |
|fBodyBodyAccJerkMag.std..       |fBodyBodyAccJerkMag.std()       |standard gravity units g |
|fBodyBodyGyroMag.std..          |fBodyBodyGyroMag.std()          |radians / second         |
|fBodyBodyGyroJerkMag.std..      |fBodyBodyGyroJerkMag.std()      |radians / second         |
|angle.tBodyAccMean.gravity.          |angle(tBodyAccMean,gravity)          |standard gravity units g |
|angle.tBodyAccJerkMean..gravityMean. |angle(tBodyAccJerkMean),gravityMean) |standard gravity units g |
|angle.tBodyGyroMean.gravityMean.     |angle(tBodyGyroMean.gravityMean)     |standard gravity units g |
|angle.tBodyGyroJerkMean.gravityMean. |angle(tBodyGyroJerkMean,gravityMean) |standard gravity units g |
|angle.X.gravityMean.                 |angle(X,gravityMean)                 |standard gravity units g |
|angle.Y.gravityMean.                 |angle(Y,gravityMean)                 |standard gravity units g |
|angle.Z.gravityMean.                 |angle(Z,gravityMean)                 |standard gravity units g |
