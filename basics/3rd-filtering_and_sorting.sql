-- SQL Lesson 4: Filtering and sorting Query results

USE sql_practice; 
-- Exercise 4 — Tasks
-- 1.List all directors of Pixar movies (alphabetically), without duplicates
-- 2.List the last four Pixar movies released (ordered from most recent to least)
-- 3.List the first five Pixar movies sorted alphabetically
-- 4.List the next five Pixar movies sorted alphabetically

-- Solutions: 
-- 1st:
SELECT DISTINCT director  
FROM Movies ORDER BY director ASC;

-- 2nd:
SELECT title, director, release_year
 FROM Movies ORDER BY release_year DESC LIMIT 4;
 
 -- 3rd:
SELECT title, director, release_year
FROM Movies
ORDER BY title, release_year ASC
LIMIT 5;

-- 4th:
SELECT title, release_year
FROM Movies
order by title ASC
LIMIT 5 OFFSET 5;