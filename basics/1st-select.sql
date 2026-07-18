/*
Lesson 1: Basic SQL Queries

Topics Covered:
- CREATE DATABASE
- USE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE

Source:
SQLBolt

*/
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