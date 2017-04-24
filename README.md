---
title: "README"
author: "SO"
date: "April 24, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

##README 

##Transform Raw Data From The Human Activity Recognition Using Smartphones Data Set To Tidy Data Using "run_analysis.R"

The process first reads in tables: activity_labels.txt, features.txt, features_info.txt, X_train.txt, y_train.txt, subject_train.txt, subject_test.txt, X_test.txt, and y_test.txt. The tables are then merged; the subejct train and test are merged into the subject table, y train and y test are merged as the activity table, and x train and x test are merged as the features table. The column names of subjects and activity are changed to be more readable, and the features table's columns are changed to be more readable by using the features.txt file. The columns of subject and activity are appended using 'cbind' to the features table. A subset of the table is then taken of all the measurements by 'mean' and 'std'(standard deviation). The activity type is then clarified by changing integer values of the activity to names from the activity_labels.txt table. The column names are then made to be more readable, for example t=Time. Finally, the process takes a mean of each variable by subject and activity using aggregate, this is then output as tidydataset.txt. 





# GettingAndCleaningDataCourseProject
