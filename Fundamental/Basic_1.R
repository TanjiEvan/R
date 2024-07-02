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
















