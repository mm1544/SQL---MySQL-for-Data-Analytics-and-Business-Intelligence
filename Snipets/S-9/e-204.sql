/*
SQL Subqueries with IN nested inside WHERE - exercise
Extract the information about all department managers who were hired between the 1st of January 1990 and the 1st of January 1995.
*/

SELECT 
    *
FROM
    dept_manager dm
WHERE
    dm.from_date > '1990-01-01'
        AND dm.from_date IN (SELECT 
            dm2.from_date
        FROM
            dept_manager dm2
        WHERE
            dm2.from_date < '1995-01-01');
            
-- Testing inner query
SELECT 
    dm2.from_date
FROM
    dept_manager dm2
WHERE
    dm2.from_date < '1995-01-01';


-- Solution
SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');
