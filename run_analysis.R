## See README for how to use script
## See CodeBook describing variables

library(dplyr)

#setwd
setwd("~/coursera/CleaningDataCourseProject/UCI HAR Dataset")

##read in all data tables

#feature names (rows) (x)
featurenames <- read.table('features.txt')

#Links the class labels with their activity name.
actlab <- read.table('activity_labels.txt')

#Training set. (features) 
xtrain <- read.table('train/X_train.txt')

#Training labels. (activity)
ytrain <- read.table('train/y_train.txt')

#Test set. (features)  
xtest <- read.table('test/X_test.txt')

#Test labels. (activity)
ytest <- read.table('test/y_test.txt')

#train subjects
subjtrain <- read.table('train/subject_train.txt')

#test subjects
subjtest <- read.table('test/subject_test.txt')

#merge test and train tables
subject <- rbind(subjtrain, subjtest)
activity <- rbind(ytrain,ytest)
features <- rbind(xtrain,xtest)

#check layout of tables
str(subject)
str(activity)
str(features)

#apply headers to columns, subject and activity have one column, 
names(subject) <- c("subject")
names(activity) <- c("activity")
names(features) <- featurenames[,2]

#merge subject and activity columns
df <- cbind(subject, activity)

#check 2 columns, 10299 rows
dim(df)

#merge features with subject and activity
df <- cbind(features, df)

#check 563 columns, 10299 rows, with column headers, and values in rows
str(df)

#identify meaurements on mean and standard deviation(std)
#measurements come from the features, and mean std identified from featurenames
meanstdfeatures <- featurenames$V2[grep('mean|std|Mean', featurenames$V2)]

#subset the mean, std features, subject and activity
dfSub <- subset(df, select = (c(as.character(meanstdfeatures), "subject", "activity")))

#change the activity numeric to values to text values. Read labels from file.
#head function used to see change
head(dfSub$activity, n = 50)
activitynames <- read.table('activity_labels.txt')
dfSub$activity <- factor(dfSub$activity, levels = activitynames$V1, labels = activitynames$V2)
head(dfSub$activity, n = 50)

#use features-info.txt to find column naming conventions
#change these abbreviations/shortenings to better ones
#t = Time
#Acc = Accelerometer
#Gyro = Gyroscope
#f = Frequency
#Mag = Magnitude
#angle = AngularVelocity
names(dfSub)
names(dfSub) <- gsub("^t", "Time", names(dfSub))
names(dfSub) <- gsub("Acc", "Accelerometer", names(dfSub))
names(dfSub) <- gsub("Gyro", "Gyroscope", names(dfSub))
names(dfSub) <- gsub("Mag", "Magnitude", names(dfSub))
names(dfSub) <- gsub("^angle", "AngularVelocity", names(dfSub))
names(dfSub) <- gsub("^f", "Frequency", names(dfSub))
names(dfSub) <- gsub("BodyBody", "Body", names(dfSub))
names(dfSub) <- gsub('tBody', 'TimeBody', names(dfSub))
names(dfSub)

#aggregate the the mean of each variable by subject and activity type
#this is a separate data set.
df2 <- aggregate(. ~ subject + activity, data = dfSub, FUN = mean)
head(df2) 

#make tidy by ordering subject number then activity type
df2 <- df2[order(df2$subject, df2$activity)]

#review order to confirm tidy
head(df2[,1:4], n = 20)
tail(df2[,1:4], n = 20)

#write the tidy data set
setwd("~/coursera/CleaningDataCourseProject/final")
write.table(df2, file = "tidydataset.txt")

