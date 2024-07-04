##Arithmetic

2+2
2/2
2%%3

#Variables

s <- 12
sa <- c(1,2,3,4,5) ##COMBINE##
sa
xa<- (1:5) 

google<- c(290,900,222)
micro<- c(300,200,120)
total <- google + micro 


## DATATYPES : 

class(google)

##Categorical Datatype = Factor Data Type 

salary_type <- c ("Low","mid","high")
class(salary_type)

salary_type_new <- as.factor(salary_type)
class(salary_type_new)

str(salary_type_new) ## gives a numerical output in alphabetical order

salary_type_numerical <- factor (salary_type,
                                 levels=c("Low",
                                          "mid",
                                          "high"))
str(salary_type_numerical)


## Vector Indexing & Slicing 

mat <- c(1:50)

mat_new <- mat [6:12]

mat_new1 <- mat[ mat > 20]


## R Matrixx ##

x <- c(1:9)
matrix(x)
matrix(x,nrow=3)
matrix(x,nrow=3,byrow=TRUE)

y <- c(1:6)
matrix(y,nrow=3,ncol=2,byrow=TRUE)

## table ## 
google<- c(290,900,222)
micro<- c(300,200,120)
pop <- matrix(c(google,micro),nrow=2,byrow=TRUE)


colnames(pop)<- c("Sat","Sun","Mon")
rownames(pop)<- c("Google","Microsoft")
pop

colnames(pop)<- salary_type
pop

## Matrix Arithmetic

rowSums(pop)
rowMeans(pop)

colSums(pop)


total <-  rowSums(pop) 
avrg <- rowMeans(pop)
mat2<-cbind(pop,total,avrg) ## Col Bind
mat2

col_total <-colSums(mat2)
complete_mat <- rbind(mat2,col_total) ##Row bind

##ACCURACY =mid/low

accuracy_google <- complete_mat[1,2]/complete_mat[1,1]
accuracy_google 

acceracy_overall <- complete_mat[3,2]/complete_mat[3,1]
acceracy_overall

complete_mat
complete_mat[2:3,1:3]

complete_mat[2:2,1:3]

complete_mat["Google","high"]

## Factor and Categorical Matrix ##

gender <- c("Male","Female","Male","Female")
age <- c(20,19,30,28)
matrix(c(gender,age),nrow=2,byrow=T)

gender<-as.factor(gender)
matt <- matrix(c(gender,age),nrow=2,byrow=T)
str(gender)

colnames(matt)<-gender

## Dataframe ##

data()
df <- state.x77 ## Dataset available in preinstalled pckg
head(df)

head(df,4)
tail(df)

summary(df)
summary(gender)

class(df)
df <-as.data.frame(df)

df$Population
summary(df$Population)
names(df) ##returns col name
str(df)

##Exporting & Importing Dataset
write.csv(df, "C:\\Users\\SPPL IT\\Desktop\\Study\\Data Science\\R\\Fundamental\\df3.csv")       

df2<-read.csv("C:\\Users\\SPPL IT\\Desktop\\Study\\Data Science\\R\\Fundamental\\df2.csv")

summary(df2)

## Working With Missing Value ##

is.na(df2) ##True Means missing value

sum(is.na(df2) ) ##Total Misssing Data


## Creating Dataframes ##

people <- data.frame(age,gender)

mat <- c(1:20)
mat <-matrix(mat,ncol=5,byrow=T)
colnames(mat) <- c("Sat","Sun","Mon","Tue","Wed")

mat_df <- as.data.frame(mat)
mat_df

df_new <- df[,c(2,5,8)]

# Ensure df_new is a data frame
df_new <- as.data.frame(df[, c(2, 5, 8)])

# Add the State column
df_new$State <- rownames(df_new)

head(df_new)

rownames(df_new)<-NULL
df_new
 
## Using Subset ##

df_new <- df[,c(2,5,8)]

df22_new<-subset(df, select= c(2,5,8))
head(df22_new)

df_new2 <- df[df[,"Murder"]>4.5,c(2,5,8)] ##Conditional Filtering

subset(df2,Income>5000 , select= c(1,2))


## Using Order () ##
class(df2)
head(df)
df2[order(df2$Murder),] ## Ascending 
desc <- df2[order(-df2$Murder),] ##Descending




























