/*
===============================================
Topics Covered:
- Filtering grouped results with HAVING
- Difference between WHERE and HAVING
- Using HAVING with GROUP BY
- Combining aggregate functions with WHERE
- Combining aggregate functions with HAVING
- COUNT()
- SUM()
- AVG()
- GROUP BY

Source:
SQLBolt
*/


USE sql_practice; 

--  Tasks
-- 1. Find the number of Artists in the studio (without a HAVING clause) 
-- 2. Find the number of Employees of each role in the studio 
-- 3. Find the total number of years employed by all Engineers 
select * from Employees; 
-- Soulutions: 

-- 1st:
SELECT COUNT(role) AS total_artists
FROM Employees
WHERE role = 'Artist';

-- 2nd:
SELECT role, COUNT(*) AS employee_count
FROM Employees
GROUP BY role;

-- 3rd:
SELECT SUM(years_employed) AS total_years
FROM Employees
WHERE role = 'Engineer';