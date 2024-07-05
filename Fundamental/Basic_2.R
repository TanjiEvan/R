## working with CSV File ##

df <- read.csv("C:\\Users\\SPPL IT\\Desktop\\Study\\Data Science\\R\\Fundamental\\web_marketing_data.csv")
df

## reading xlsx file ##

install.packages("readxl")
library("readxl")

df2 <- read_excel("C:\\Users\\SPPL IT\\Desktop\\Study\\Data Science\\R\\Fundamental\\web_marketing_data.xlsx"
                  , sheet=1)
head(df2)

##Export excel file
install.packages("xlsm")
library(xlsx)

### Importing from Database ###

##mysql##

install.packages("RMySQL")
library(RMySQL)

user<- "root"
password <- "Tanji123"
db_name <- "employees"
table <- "employees"
host <- "127.0.0.1" 
port <- 3306

database <- dbConnect(MySQL(),user= user ,
          password= password,
          dbname=db_name,
          host=host,
          port=port,
          client.flag= CLIENT_LOCAL_FILES )

req<-dbSendQuery(database,"SELECT * FROM employees")

df <- fetch(req, n=-1)

head(df)


Unique_name <- data.frame(id=1 : length(unique(df$first_name)),Unique_name = unique(df$first_name))
Unique_name














