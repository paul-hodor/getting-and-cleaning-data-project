# Code Book

The repo describes a data extract from the "Human Activity Recognition Using Smartphones Dataset, Version 1.0". The original dataset is from

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

From the original variables derived from accelerometer and gyroscope raw signals, 33 were selected for this dataset. For each variable mean and standard deviation features were retained. Individual records were averaged for each subject and activity.

The data extract contains 69 variables. The first 3 describe the data groups, the other 66 are the signal features. For each type of signal there are two variables representing the mean value (labeled "mean") and the standard deviation ("std") averaged over subjects and activities. 3-axial signals in the X, Y, and Z directions are represented by 3 different variables, where the direction is appended to the variable label. For example signal type __tBodyAcc.XYZ__ is represented by 6 features, i.e. means and standard deviations in each of the 3 axes: __tBodyAcc.mean.X__, __tBodyAcc.mean.Y__, __tBodyAcc.mean.Z__, __tBodyAcc.std.X__, __tBodyAcc.std.Y__, __tBodyAcc.std.Z__.

---

The variables describing data groups are:

* __set__ - A binary assignment to a training or test set.

* __sbj__ - Subject number. Values are from 1 to 30.

* __act__ - Activity. The 6 types of activity are LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS.

---

The feature variables represent the following signal types:

* __tBodyAcc.XYZ__
* __tGravityAcc.XYZ__
* __tBodyAccJerk.XYZ__
* __tBodyGyro.XYZ__
* __tBodyGyroJerk.XYZ__
* __tBodyAccMag__
* __tGravityAccMag__
* __tBodyAccJerkMag__
* __tBodyGyroMag__
* __tBodyGyroJerkMag__
* __fBodyAcc.XYZ__
* __fBodyAccJerk.XYZ__
* __fBodyGyro.XYZ__
* __fBodyAccMag__
* __fBodyBodyAccJerkMag__
* __fBodyBodyGyroMag__
* __fBodyBodyGyroJerkMag__

