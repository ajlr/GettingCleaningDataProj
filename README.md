---
title: "README.md"
output: html_document
---

###Assembling test data
- Subject ID read into a data frame from test/subject_test.txt
- Activity codes read into a data frame from test/y_test.txt
- Data frame of activity description from Activity code frame and table from activity_labels.txt
- Data frame of test data from test/X_test.txt, column names taken from features.txt
- The above 4 data frames of 2947 obs. each were cbind'ed to a single frame called *testDataSet*

###Assembling train data
- Subject ID read into a data frame from train/subject_train.txt
- Activity codes read into a data frame from train/y_train.txt
- Data frame of activity description from Activity code frame and table from activity_labels.txt
- Data frame of train data from train/X_train.txt, column names taken from features.txt
- The above 4 data frames of 7352 obs. each were cbind'ed to a single frame called *trainDataSet*

###Combining test and train data
- *trainDataSet* and *testDataSet* were rbind'ed to a single frame called *combinedDataSet*

###Converting to a data.table 
- *combinedDataSet* was read into a data.table table *combinedDataTable*

###Select mean and standard deviation columns
- Vector of names of columns created by names(combinedDataTable) -> *tableNames*
- Logical vector of whether column names matched "mean" using grepl() and sapply(). 
- Logical vector of whether column names matched "std" using grepl() and sapply(). 
- The above two logical vectors were used to subset the *tableNames* vector into *requiredDataColumns*

###Result table calculated with this statement:

resultTable <- combinedDataTable[, lapply(.SD, mean), 
                                 by=c("Subject.Id", "Activity.Code", "Activity.Label"), .SDcols = requiredDataColumns]
                                 
- The above groups the data by subject id , activity code and label
- lapply iterates over the mean and standard deviation columns in the combinedDataTable, taking the mean and adding each result as column in the result table
 
###Reordering the result table

- The order function was used to sort the results by activity label and subject
- Result table was written to file
                                 

