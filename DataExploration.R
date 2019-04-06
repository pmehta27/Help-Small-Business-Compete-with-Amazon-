source("ImportData.R")

library(dplyr)
library(reshape2)
library(ggplot2)
library(ggpubr)
library(DT)
library(data.table)


#checking for duplicates
anyDuplicated(books)
anyDuplicated(ratings)
anyDuplicated(tags)
anyDuplicated(book_tags)

#Check for missing values
any(is.na(books)) # True
#check which columns of books has missing value 
names(which(colSums(is.na(books))>0))
any(is.na(ratings))
any(is.na(to_read))
any(is.na(tags))
any(is.na(book_tags))

#data Exploration here
head(ratings)

# no. of ratings per user 
rat <- ratings %>% 
  group_by(user_id) %>%
  summarise(ratings_per_user = n())
qplot(rat$ratings_per_user, geom = "histogram", xlab = "ratings per user", ylab = "Frequency",
      main = "Frequency distribution of ratings per user", binwidth = 0.5)

mean(rat$ratings_per_user)
min(rat$ratings_per_user)
max(rat$ratings_per_user)

# no. of ratings per book
rat <- ratings %>% 
  group_by(book_id) %>%
  summarise(ratings_per_book = n())

qplot(rat$ratings_per_book, geom = "histogram", xlab = "ratings per book", ylab = "Frequency",
      main = "Frequency distribution of ratings per book",xlim = c(0, 1000), binwidth = 0.5) 

mean(rat$ratings_per_book)
max(rat$ratings_per_book)
min(rat$ratings_per_book)
