Course project code book
========================

>In this experiment, a group of thirty volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone  on their waists.

>Three-axial linear acceleration and three-axial angular velocity were collected.The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 't' to denote time) were filtered to remove noise. The acceleration signal was separated into body and gravity acceleration signals(tBodyAcc-XYZ and tGravityAcc-XYZ).The body linear acceleration and angular velocity were derived in time to get Jerk signals(tBodyAccJerk-XYZ). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to indicate 3-axial signals in the X, Y and Z directions: tBodyAcc-XYZ, tGravityAcc-XYZ,tBodyAccJerk-XYZ


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


**Average of each variable was calculated for each activity and each subject.**




'data.frame':	10299 obs. of  20 variables:
- subject           : num  from 1 to 30��identifier of the subject who carried out the experiment
 
- activity          : chr. Activity labels��WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
			     
-  tBodyAccmeanX    : num  Mean value of body acceleration signals in the X directions

-  tBodyAccmeanY    : num  Mean value of body acceleration signals in the Y  directions

-  tBodyAccmeanZ    : num  Mean value of body acceleration signals in the Z directions
 
-  tBodyAccstdX     : num  Standard deviation body acceleration signals in the X directions

-  tBodyAccstdY     : num  Standard deviation body acceleration signals in the Y  directions

-  tBodyAccstdZ     : num  Standard deviation body acceleration signals in the Z directions
 
-  tGravityAccmeanX : num  Mean value of gravity acceleration signals in the X directions

-  tGravityAccmeanY : num  Mean value of gravity acceleration signals in the y directions

-  tGravityAccmeanZ : num  Mean value of gravity acceleration signals in the z directions

-  tGravityAccstdX  : num  Standard deviation gravity acceleration signals in the X directions

-  tGravityAccstdY  : num  Standard deviation gravity acceleration signals in the y directions

-  tGravityAccstdZ  : num  Standard deviation gravity acceleration signals in the z directions

-  tBodyAccJerkmeanX: num  Mean value of body acceleration Jerk signals in the X directions

-  tBodyAccJerkmeanY: num  Mean value of body acceleration Jerk signals in the y directions 

-  tBodyAccJerkmeanZ: num  Mean value of body acceleration Jerk signals in the z directions

-  tBodyAccJerkstdX : num  Standard deviation of body acceleration Jerk signals in the X directions

-  tBodyAccJerkstdY : num  Standard deviation of body acceleration Jerk signals in the y directions

-  tBodyAccJerkstdZ : num  Standard deviation of body acceleration Jerk signals in the z directions