install.packages("rvest") 
install.packages("dplyr")
install.packages("stringr")

library(rvest)
library(dplyr)
library(stringr)

link<-"https://www.startech.com.bd/laptop-notebook/laptop?page=1"
page<-read_html(link)

Title <-  page %>% html_nodes(".p-item-name a") %>% html_text()
Title

Processor <- page %>% html_nodes(".short-description li:nth-child(1)") %>% html_text() %>% str_replace_all(c("Processor: " = "", "\r" = "")) 
Processor

Memory_Capacity<-  page %>% html_nodes(".short-description li:nth-child(2)") %>% html_text() %>% str_replace_all(c("\r" = ""))
Memory_Capacity

Display <- page %>% html_nodes(".short-description li:nth-child(3)") %>% html_text()%>% str_replace_all(c("Display: " = "" , "\r" = ""))
Display

Features <- page %>% html_nodes(".short-description li:nth-child(4)") %>% html_text()%>% str_replace_all(c("Features: " = "" , "\r" = ""))
Features

Price<- page %>% html_nodes(".p-item-price span:nth-child(1)") %>% html_text()
Price

Laptop_Info  <- cbind(Title,Processor,Memory_Capacity,Display,Features,Price)
Laptop_Info

write.csv(Laptop_Info , "Laptop_Price_in_Bangladesh.csv", row.names = FALSE)





