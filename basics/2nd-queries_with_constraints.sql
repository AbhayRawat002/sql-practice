/*
Lesson 2: Queries with Constraints

Topics Covered:
- WHERE
- AND
- OR
- BETWEEN
- LIMIT

Source:
SQLBolt

*/

USE sql_practice;

-- Exercise 2 — Tasks:
-- Find the movie with a row id of 6
-- Find the movies released in the years between 2000 and 2010
-- Find the movies not released in the years between 2000 and 2010
-- Find the first 5 Pixar movies and their release year

-- solutions 
-- 1st: syntax= SELECT columns FROM table_name WHERE condition;
select * 
FROM Movies 
WHERE id=6;   
-- 2nd 
SELECT * 
FROM Movies 
WHERE release_year >= 2000 
and release_year <= 2010;
SELECT *	
FROM Movies
WHERE release_year BETWEEN 2000 AND 2010;  -- simpler way 
-- 3rd 
SELECT * 
FROM Movies 
WHERE release_year < 2000 
or release_year > 2010;	-- simpler way 
-- 4TH
SELECT title, release_year  -- Show only these two columns.
FROM Movies		-- Use the Movies table.
ORDER BY release_year	-- Sort from oldest year to newest year
LIMIT 5; 	-- Return only the first 5 rows after sorting.
 
-- Exercise 3 — Tasks
-- 1.Find all the Toy Story movies
-- 2.Find all the movies directed by John Lasseter
-- 3.Find all the movies (and director) not directed by John Lasseter
-- 4.Find all the WALL-* movies

-- Solutions:
-- 1st:
SELECT * 
FROM Movies
WHERE title LIKE "%toy%" ;

-- 2nd 
SELECT *
FROM Movies 
WHERE director = "John Lasseter" ;

-- 3rd 
SELECT title,director
FROM Movies 
WHERE director !=  "John Lasseter" ;

-- 4th:
SELECT * 
FROM Movies
WHERE title LIKE "%Wall%" ;