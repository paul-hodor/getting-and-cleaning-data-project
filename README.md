# README

The repo describes a data extract from the "Human Activity Recognition Using Smartphones Dataset, Version 1.0". The original dataset is from

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Prepration of the dataset is done with R script ```run_analysis.R```. The script carries out the following transformations:

* The training and test feature datasets are merged.

* Only means and standard deviations from 33 variables are retained. Other features are removed.

* Columns are added containing assignment to the training/test sets, subject number, and activity name.

* Individual measurements are averaged for each combination of subject and activity.

The final dataset contains 180 observations and 69 variables. The variables are described in the [Code Book](CodeBook.md).
 