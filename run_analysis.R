
## step1&2 Merges the training and the test sets to create one data set.Extracts only the measurements on the mean and standard deviation for each measurement. 
subject_train_data <- read.table("./train/subject_train.txt")
subject_test_data <- read.table("./test/subject_test.txt")
subject_data<- rbind(subject_train_data,subject_test_data)
colnames(subject_data)<- c("subject")
subject_data$subject <-as.character(subject_data$subject)

X_train_data<- read.table("./train/X_train.txt")
X_test_data <- read.table("./test/X_test.txt")
x_data <- rbind(X_train_data, X_test_data)
name_list<- readLines("./features.txt")  ## 561
colnames(x_data)<- name_list
x_data <-x_data[,c((1:6),(41:46), (81:86))] 

y_train_data <- read.table("./train/y_train.txt")
y_test_data <- read.table("./test/y_test.txt")
y_data <- rbind(y_train_data, y_test_data)
colnames(y_data)<- c("activity")
y_data$activity <-as.character(y_data$activity)

data <- cbind(subject_data, y_data, x_data )


## step3  descriptive activity names to name the activities in the data set
data$activity[data$activity==1]<-"walking"
data$activity[data$activity==2]<-"walking_uptairs"
data$activity[data$activity==3]<-"walking_downstairs"
data$activity[data$activity==4]<-"sitting"
data$activity[data$activity==5]<-"standing"
data$activity[data$activity==6]<-"laying"

##step4
tolower(names(data))
names(data)<- gsub("-|\\()", "", names(data),)
names(data) <- gsub("\\d", "", names(data),)

## step5 subject and activity
data2 <- aggregate(data, by=list(subject=data$subject,activity=data$activity), FUN=mean)
data2 <- data2[,-c(3,4)]
data2$subject<-as.numeric(data2$subject)
mydata <- data2[order(data2$subject),]
write.table(mydata, "./mydata.txt", sep="\t",row.name=FALSE)
