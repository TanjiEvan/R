install.packages("rvest") #used for web scraping in R
#install.packages("dplyr") #used for data manipulation and transformation

library(rvest)
#library(dplyr)

link<-"https://editorial.rottentomatoes.com/guide/best-computer-animated-movies-of-all-time/"
page<-read_html(link)

Title <-  page %>% html_nodes(".article_movie_title a") %>% html_text()
Title
Year <- page %>% html_nodes(".start-year") %>% html_text() 
Year <- gsub("[()]", "", Year)
Year
Tomatometer <- page %>% html_nodes(".tMeterScore") %>% html_text()
Tomatometer
#director <- page %>% html_nodes(".director a") %>% html_text()
#director 
ANIMATED_MOVIES  <- cbind(Title,Year,Tomatometer)
ANIMATED_MOVIES  
write.csv(ANIMATED_MOVIES , "ANIMATED_MOVIES.csv", row.names = FALSE)
