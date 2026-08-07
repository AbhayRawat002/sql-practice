/*
Lesson 10: Queries with Aggregate Functions

Topics Covered:
- Aggregate functions
- COUNT()
- MIN()
- MAX()
- AVG()
- SUM()
- Using aliases with aggregate functions
- GROUP BY
- Grouping rows with the same values
- Applying aggregate functions to groups

Source:
SQLBolt
*/

USE sql_practice; 

-- Tasks
-- 1. Find the longest time that an employee has been at the studio
-- 2. For each role, find the average number of years employed by employees in that role
-- 3. Find the total number of employee years worked in each building

-- Soulutions: 
-- 1st: 
SELECT MAX(years_employed) AS longest_employment
FROM employees;

-- 2nd:
SELECT role, AVG(years_employed) AS avg_employment
FROM employees
GROUP BY role;

-- 3rd:
SELECT Building, Sum(years_employed) AS avg_employment
FROM employees
GROUP BY Building;