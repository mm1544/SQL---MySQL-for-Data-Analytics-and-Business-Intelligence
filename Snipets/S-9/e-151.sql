/*
MIN() and MAX() - exercise
1. Which is the lowest employee number in the database?

2. Which is the highest employee number in the database?
*/

SELECT 
    MIN(emp_no)
FROM
    employees;


####

SELECT 
    max(emp_no)
FROM
    employees;