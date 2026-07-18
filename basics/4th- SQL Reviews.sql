/*
SQL Review & Practice Exercises

Topics Covered:
- SELECT Queries
- WHERE Conditions
- LIKE & Wildcards
- ORDER BY
- LIMIT & OFFSET
- Practice using Movies and Cities tables

Purpose:
Revision and practice of SQL concepts learned in Lessons 1–4.

Source:
SQLBolt
*/
USE sql_practice; 

CREATE TABLE Cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    City VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Population INT NOT NULL CHECK (Population > 0),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6)
);

INSERT INTO Cities (City, Country, Population, Latitude, Longitude)
VALUES
('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609),
('Toronto', 'Canada', 2795060, 43.653226, -79.383184),
('Houston', 'United States', 2195914, 29.760427, -95.369803),
('New York', 'United States', 8405837, 40.712784, -74.005941),
('Philadelphia', 'United States', 1553165, 39.952584, -75.165222),
('Havana', 'Cuba', 2106146, 23.054070, -82.345189),
('Mexico City', 'Mexico', 8555500, 19.432608, -99.133208),
('Phoenix', 'United States', 1513367, 33.448377, -112.074037),
('Los Angeles', 'United States', 3884307, 34.052234, -118.243685),
('Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674),
('Montreal', 'Canada', 1717767, 45.501689, -73.567256),
('Chicago', 'United States', 2718782, 41.878114, -87.629798);

-- Task: 
-- 1. List all the Canadian cities and their populations
-- 2. Order all the cities in the United States by their latitude from north to south
-- 3. List all the cities west of Chicago, ordered from west to east
-- 4. List the two largest cities in Mexico (by population)
-- 5. List the third and fourth largest cities (by population) in the United States and their population

SELECT * FROM Cities;
-- Solutions 
-- 1st:
SELECT City, Population 
FROM Cities  
WHERE Country = "Canada";

-- 2ND:
SELECT city, latitude 
FROM Cities
WHERE country = "United States"
ORDER BY Latitude  DESC ;

-- 3rd:
SELECT City, Longitude
FROM Cities
WHERE Longitude < -87.629798
ORDER BY Longitude ASC;

-- 4th:
SELECT city, population
from cities 
Where Country = "Mexico"
order by population desc
limit 2;

-- 5th:
SELECT City, Population 
FROM Cities
where country = "United States"
order by population desc
limit 2 offset 2;
