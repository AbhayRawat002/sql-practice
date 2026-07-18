/*
Lesson 5: Multi-table Queries with INNER JOIN

Topics Covered:
- Database Normalization
- Primary Key
- Foreign Key
- INNER JOIN
- JOIN with WHERE
- JOIN with ORDER BY

Source:
SQLBolt

*/

USE sql_practice;

CREATE TABLE BoxOffice (
    movie_id INT PRIMARY KEY,
    rating DECIMAL(3,1) NOT NULL CHECK (rating >= 0 AND rating <= 10),
    domestic_sales INT NOT NULL CHECK (domestic_sales >= 0),
    international_sales INT NOT NULL CHECK (international_sales >= 0),
    FOREIGN KEY (movie_id) REFERENCES Movies(id)
);

INSERT INTO BoxOffice
(movie_id, rating, domestic_sales, international_sales)
VALUES 
(5, 8.2, 380843261, 555900000),
(14, 7.4, 268492764, 475066843),
(8, 8.0, 206445654, 417277164),
(12, 6.4, 191452396, 368400000),
(3, 7.9, 245852179, 239163000),
(6, 8.0, 261441092, 370001000),
(9, 8.5, 223808164, 297503696);

-- Tasks
-- 1. Find the domestic and international sales for each movie 
-- 2. Show the sales numbers for each movie that did better internationally rather than domestically 
-- 3. List all the movies by their ratings in descending order 


-- Solutions: 
-- 1st
SELECT 
    title, domestic_sales, international_sales
FROM
    Movies
        INNER JOIN
    boxoffice ON movies.id = boxoffice.movie_id;
  
-- 2nd
SELECT title, domestic_sales, international_sales
FROM Movies
 INNER JOIN boxoffice
  ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- 3rd 
SELECT id, title, rating
FROM movies
 JOIN boxoffice
  ON movies.id = boxoffice.movie_id
ORDER BY rating DESC