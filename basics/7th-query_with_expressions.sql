/*
Lesson 9: Query Expressions & Aliases

Topics Covered:
- Using expressions in SQL queries
- Arithmetic operations on column values
- Mathematical functions
- String functions
- Column aliases using AS
- Table aliases using AS
- Writing cleaner and more readable queries

Source:
SQLBolt
*/

USE sql_practice; 


-- tasks: 
-- 1. List all movies and their combined sales in millions of dollars 
-- 2. List all movies and their ratings in percent
-- 3. List all movies that were released on even number years

-- solutions:

-- 1st:
SELECT title, (domestic_sales + international_sales) / 1000000 AS overall_sales_in_million
FROM movies as mov
LEFT JOIN boxoffice as BO
ON mov.Id = BO.Movie_id;

-- 2nd:
SELECT title, rating*10 as rating_in_percentage
FROM movies as mov
left join boxoffice as bo
on mov.Id = bo.Movie_id;

-- 3rd:
SELECT title, release_year
FROM Movies
WHERE release_year % 2 = 0;