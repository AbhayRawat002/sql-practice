/*
Lesson 7-8: OUTER JOINs & NULL Values

Topics Covered:
- Difference between INNER JOIN and OUTER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN concepts
- Handling unmatched rows
- Understanding NULL values
- IS NULL and IS NOT NULL conditions
- Finding missing relationships using JOINs
- Using table aliases

Source:
SQLBolt
*/

USE sql_practice;

CREATE TABLE Buildings (
	Building_name VARCHAR(100),
    Capacity INT 
);

INSERT INTO Buildings 
(Building_name, Capacity)
VALUES
("1e", 24),
("1w", 32),
("2e", 16),
("2w", 20);

CREATE TABLE Employees (
    role VARCHAR(100),
    name VARCHAR(100),
    building VARCHAR(100),
    years_employed INT
);

INSERT INTO Employees
(role, name, building, years_employed)
VALUES
('Engineer', 'Becky A.', '1e', 4),
('Engineer', 'Dan B.', '1e', 2),
('Engineer', 'Sharon F.', '1e', 6),
('Engineer', 'Dan M.', '1e', 4),
('Engineer', 'Malcom S.', '1e', 1),
('Artist', 'Tylar S.', '2w', 2),
('Artist', 'Sherman D.', '2w', 8),
('Artist', 'Jakob J.', '2w', 6),
('Artist', 'Lillia A.', '2w', 7),
('Artist', 'Brandon J.', '2w', 7),
('Manager', 'Scott K.', '1e', 9),
('Manager', 'Shirlee M.', '1e', 3),
('Manager', 'Daria O.', '2w', 6); 

-- Tasks
-- 1. Find the list of all buildings that have employees
-- 2. Find the list of all buildings and their capacity
-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)

-- Solutions:
-- 1st:
SELECT DISTINCT building_name
FROM buildings
INNER JOIN employees
ON buildings.building_name = employees.building;

-- 2nd:
SELECT * FROM Buildings;
-- 3rd:
SELECT DISTINCT bld.building_name, emp.role
FROM buildings AS bld 
LEFT JOIN employees AS emp
    ON bld.building_name = emp.building; 