library("data.table")

rootDir <- "UCI HAR Dataset"

#build up dictionary frame for activity labels

activityLabels <- read.table(file.path(rootDir, "activity_labels.txt"), colClasses="character",
                             col.names=c("Code", "Activity.Label"))
#Vector of data column names 
columnNames <- read.table( file.path(rootDir, "features.txt"), col.names=c("L", "Data.Columns"),
                           colClasses="character")
columnNameVec <- columnNames$Data.Columns

##Building up test data set 

#Reading test subject Ids

testSubjIds <- read.table( file.path(rootDir, "test", "subject_test.txt"),
                           colClasses="numeric", col.names="Subject.Id") 

#Read test activity codes

testActivityCode <- read.table( file.path(rootDir, "test", "y_test.txt"),
                                colClasses="character", col.names="Activity.Code")

#build data frame of activity Labels
testActLabels<- c("")

for(i in 1:nrow(testActivityCode)) {
  testActLabels[i] <- activityLabels[activityLabels$Code==testActivityCode[i, "Activity.Code"],
                                     "Activity.Label"]
}

testActivityLabels <- data.frame(Activity.Label = testActLabels)



#Read test data

testData <- read.table( file.path(rootDir, "test", "X_test.txt"), col.names=columnNameVec,
                        colClasses="numeric")

#Combine above frames to get test data set, with subject id and activity labels
testDataSet <- cbind(testSubjIds, testActivityCode, testActivityLabels, testData)


##Building up training data set 

#Reading training subject Ids

trainSubjIds <- read.table( file.path(rootDir, "train", "subject_train.txt"),
                           colClasses="numeric", col.names="Subject.Id") 

#Read train activity codes

trainActivityCode <- read.table( file.path(rootDir, "train", "y_train.txt"),
                                colClasses="character", col.names="Activity.Code")

#build data frame of activity Labels
trainActLabels<- c("")

for(i in 1:nrow(trainActivityCode)) {
  trainActLabels[i] <- activityLabels[activityLabels$Code==trainActivityCode[i, "Activity.Code"],
                                     "Activity.Label"]
}


trainActivityLabels <- data.frame(Activity.Label = trainActLabels)

#Read train data

trainData <- read.table( file.path(rootDir, "train", "X_train.txt"), col.names=columnNameVec,
                        colClasses="numeric")

#Build training data set with subject and activity labels

trainDataSet <- cbind(trainSubjIds, trainActivityCode, trainActivityLabels, trainData)

#Combine the test and train data set

combinedDataSet <- rbind(testDataSet, trainDataSet)


##Create a data.table for the combined set
combinedDataTable <- data.table(combinedDataSet)

tableNames <- names(combinedDataTable)

##Get column names of means and standard deviations (std)
meanColIndices <- sapply(tableNames, grepl, pattern="mean", ignore.case=TRUE)
meanColumns <- tableNames[meanColIndices]
stdColIndices <- sapply(tableNames, grepl, pattern="std", ignore.case=TRUE)
stdColumns <- tableNames[stdColIndices]

#Column vector to be used in .SDcols
requiredDataColumns <- union(meanColumns, stdColumns)

#Calculate results using data table

resultTable <- combinedDataTable[, lapply(.SD, mean), 
                                 by=c( "Activity.Code", "Activity.Label", "Subject.Id"), .SDcols = requiredDataColumns]

resultTable<-resultTable[order( resultTable$Activity.Code, resultTable$Subject.Id)]

write.table(resultTable, "resultTable.txt", row.name=FALSE)
