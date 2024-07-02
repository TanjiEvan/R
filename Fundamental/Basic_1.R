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






