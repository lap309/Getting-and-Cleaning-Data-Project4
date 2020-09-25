library(dplyr)

filename<- "getdata_projectfiles_UCI HAR Dataset.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, filename, method="curl")

features<-read.table("~/Downloads/UCI HAR Dataset/features.txt", colnames=c("n", "Functions"))
activitylabels<-read.table("~/Downloads/UCI HAR Dataset/activity_labels.txt", colnames=c("code", "Activity"))


subject_test<-read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt", colnames="Subject")
testx<-read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt")
testy<-read.table("~/Downloads/UCI HAR Dataset/test/Y_test.txt")


subject_train<-read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt", colnames="Subject")
trainx<-read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt")
trainy<-read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt")

##Create one dataset
train<-cbind(subject_train,trainy,trainx)
test<-cbind(subject_test,testy,testx)
all<-rbind(train,test)
names(all) <- c("Subject","Activity",features$variable)

##Extract only the measurements on the mean and standard deviations of each measurement

all <- all%>%select(matches('mean|std|Activity|Subject'))

##3
all$Activity <- plyr::mapvalues(all$Activity, from=as.factor(1:6), to=activitylabels$Activity)

##4
TidyData$code <- activities[TidyData$code, 2]
names(all)<-gsub("BodyBody", "Body", names(all))
names(all)<-gsub("tBody", "TimeBody", names(all))
names(all)<-gsub("gravity", "Gravity", names(all))
names(all)<-gsub("Acc", "Accelerometer", names(all))
names(all)<-gsub("Gyro", "Gyroscope", names(all))
names(all)<-gsub("Mag", "Magnitude", names(all))
names(all)<-gsub("^t", "Time_Doman", names(all))
names(all)<-gsub("^f", "Frequency_Domain", names(all))
names(all)<-gsub("angle", "Angle", names(all))


tidydata <- all%>%group_by(Activity,Subject)%>%summarise_all(mean)
write.table(tidydata, "TidyData.txt", row.name=FALSE)

