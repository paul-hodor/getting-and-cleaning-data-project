# Code Book

The repo describes a data extract from the "Human Activity Recognition Using Smartphones Dataset, Version 1.0". The original dataset is from

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

From the original variables derived from accelerometer and gyroscope raw signals, 33 were selected for this dataset. For each variable mean and standard deviation features were retained. Individual records were averaged for each subject and activity.

The data extract contains 69 variables. The first 3 describe the data groups, the other 66 are the signal features. For each tye of signal there are two variables representing the mean value (labeled "mean") and the standard deviation ("std") averaged over sibjects and activities. 3-axial signals in the X, Y, and Z directions are represented by 3 different variables, where the direction is appended to the variable label.

---

The variables describing data groups are:

* __set__ - A binary assignment to a training or test set.

* __sbj__ - Subject number. Values are from 1 to 30.

* __act__ - Activity. The 6 types of activity are LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS.

---

The feature variables are:

* __BodyAcc-XYZ__
* __GravityAcc-XYZ__
* __BodyAccJerk-XYZ__
* __BodyGyro-XYZ__
* __BodyGyroJerk-XYZ__
* __BodyAccMag__
* __GravityAccMag__
* __BodyAccJerkMag__
* __BodyGyroMag__
* __BodyGyroJerkMag__
* __BodyAcc-XYZ__
* __BodyAccJerk-XYZ__
* __BodyGyro-XYZ__
* __BodyAccMag__
* __BodyBodyAccJerkMag__
* __BodyBodyGyroMag__
* __BodyBodyGyroJerkMag__

