CREATE DATABASE sql_practice; 

use sql_practice; 

-- creating a table with minimum 1 column is must 
CREATE TABLE Movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    release_year INT NOT NULL CHECK (release_year>=1888),
    movie_length INT NOT NULL CHECK (movie_length > 0)
);
-- SELECT * FROM  Movies; 

-- adding data to the columns in the table (inserting data)
INSERT INTO Movies
(title, director, release_year, movie_length)
VALUES
('ToyStory', 'JohnLasseter', 1995,	81),
('A Bug''s Life', 'John Lasseter', 1998, 95),
('Toy Story 2', 'John Lasseter', 1999, 93),
('Monsters, Inc.', 'Pete Docter', 2001, 92),
('Finding Nemo', 'Andrew Stanton', 2003, 107),
('The Incredibles', 'Brad Bird', 2004, 116),
('Cars'	,'John Lasseter',	2006,	117),
('Ratatouille',	'Brad Bird',	2007,	115),
('WALL-E',	'Andrew Stanton',	2008,	104),
('Up',	'Pete Docter',	2009,	101),
('Toy Story 3',	'Lee Unkrich',	2010,	103),
( 'Cars 2',	'John Lasseter',	2011,	120),
('Brave',	'Brenda Chapman',	2012,	102),
('Monsters University',	'Dan Scanlon',	2013,	110);
SELECT * FROM  Movies;


-- Exercise 1 — Tasks:
-- 1.Find the title of each film
-- 2.Find the director of each film
-- 3.Find the title and director of each film
-- 4.Find the title and year of each film
-- 5.Find all the information about each film

-- solutions 
select title from Movies;  -- 1st
SELECT director from Movies; -- 2nd
SELECT title, director from Movies;  -- 3rd
SELECT title, release_year from Movies; -- 4th
SELECT * FROM Movies;  -- 5th


-- Exercise 2 — Tasks
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
 