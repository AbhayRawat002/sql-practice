/*
Lesson 12: Order of Execution of a Query

Topics Covered:
- SQL query execution order
- FROM and JOIN
- WHERE
- GROUP BY
- HAVING
- SELECT
- DISTINCT
- ORDER BY
- LIMIT and OFFSET
- Understanding how query clauses work together

Source:
SQLBolt
*/

USE sql_practice; 
UPDATE Movies
SET director = 'John Lasseter'
WHERE director = 'JohnLasseter';

-- Tasks
-- 1. Find the number of movies each director has directed 
-- 2. Find the total domestic and international sales that can be attributed to each director
-- 3. Find the average rating of movies for each director
-- 4. Find the directors who have directed more than 1 movie

-- Soulutions:
-- 1st:
SELECT  director, COUNT(DIrector) AS Number_of_movies
FROM Movies 
GROUP BY Director;

-- 2nd: 
SELECT 
    id,
    director,
    SUM(DOmestic_sales + International_sales) AS Total_sales
FROM
    Movies
        LEFT JOIN
    boxoffice ON Movies.iD = Boxoffice.MOvie_id
GROUP BY Director;


USE sql_practice; 
UPDATE Movies
SET director = 'John Lasseter'
WHERE director = 'JohnLasseter';

-- 3rd:
SELECT director, AVG(rating) AS average_rating
FROM Movies
RIGHT JOIN BoxOffice
    ON Movies.id = BoxOffice.movie_id
GROUP BY director;

-- 4th:
SELECT director, COUNT(director) AS Number_of_movies
FROM Movies
GROUP BY director
HAVING COUNT(director) > 1;