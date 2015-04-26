subject_test<-read.table("./test/subject_test.txt")
names(subject_test)<-"subject"
x_test<-read.table("./test/X_test.txt")

y_test<-read.table("./test/y_test.txt")
names(y_test)<-"lables"
df_test<-cbind(subject_test,y_test,x_test)
subject_train<-read.table("./train/subject_train.txt")
names(subject_train)<-"subject"
x_train<-read.table("./train/X_train.txt")
y_train<-read.table("./train/y_train.txt")
names(y_train)<-"lables"
df_train<-cbind(subject_train,y_train,x_train)

m_data<-merge(df_test,df_train,by.x="subject",by.y="lables")
