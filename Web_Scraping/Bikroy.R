install.packages("rvest") #used for web scraping in R
#install.packages("dplyr") #used for data manipulation and transformation

library(rvest)
#library(dplyr)

link<-"https://bikroy.com/en/ads/bangladesh/mobiles"
page<-read_html(link)

Title <-  page %>% html_nodes(".title--3yncE") %>% html_text()
Title
Location <- page %>% html_nodes(".description--2-ez3") %>% html_text()
Location
Price <- page %>% html_nodes(".price--3SnqI") %>% html_text()
Price


Bikroy  <- cbind(Title,Location,Price)
Bikroy

write.csv(Bikroy, "Phone_Price_in_Bikroy.csv", row.names = FALSE)

