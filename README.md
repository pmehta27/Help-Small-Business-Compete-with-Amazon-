# Book-Recommender-Systems

## Introduction
Dont you hate it when you are looking for a good book and you do not know which one to read? In order to address the aforementioned problem, we built a recommendation system for books using collaborative filtering methods - user based and item based collaborative filtering. Recommendation system, in essence, is an automated decision engine that helps user make better choices by evaluating the similarities between user ratings and/or item ratings to make a recommendation about the next item. These systems exploit data mining and information retrieval techniques to predict the extent to which an item/book suits the user needs and recommends the one with the largest prediction score.


## Dataset details
We have used datasource as goodbooks-10k which contains five comma separated value (CSV) files as follows:
* books: Includes metadata used to describe the books and ratings received and contains 23 attributes.
* books_tag: Contains tags assigned by users to the books. Comprises of 3 attributes.
* tags:  Contains information needed to translate tagIDs to names with 2 attributes.
* to_read: Contains IDs of the books marked as to read by each user as (user id, book_id) pairs, comprises of 2 attributes.
* ratings: Contains ratings given by each user to the books, comprises of 3 attributes.

#### Dataset Size
There are two important data sets: books and ratings. The books dataset comprises of records pertaining to 10000 books and ratings consists of approximately six million records. 53424 users have provided ratings for books, with each user providing at least two ratings. Each book has at most 100 reviews with ratings ranging from one to five.

## Conclusion
For this project, we implemented user based collaborative filtering to make recommendations. This will allow websites like Bookdepository, AbeBooks to compete with Amazon recommending excellent products.
