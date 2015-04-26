## Data already loaded on the local folder Dataset
## I use setwd() command in R.studio to use Dataset folder as worked dir.

subject_test<-read.table("./test/subject_test.txt")  ## read test data about subject to subject_test
names(subject_test)<-"subject"                       ## change name of column data to "subject"
x_test<-read.table("./test/X_test.txt")              ## read test data about different meagurement to x_test

y_test<-read.table("./test/y_test.txt")             ## read test data about lanles of exersice 
names(y_test)<-"lables"                             ## change name of column data to "lables"
df_test<-cbind(subject_test,y_test,x_test)          ## create dataframe with test data


subject_train<-read.table("./train/subject_train.txt") ## do same thing to with train data
names(subject_train)<-"subject"
x_train<-read.table("./train/X_train.txt")
y_train<-read.table("./train/y_train.txt")
names(y_train)<-"lables"
df_train<-cbind(subject_train,y_train,x_train)

m_data<-merge(df_test,df_train,by.x="subject",by.y="lables")  ## merge data from two dataframe
