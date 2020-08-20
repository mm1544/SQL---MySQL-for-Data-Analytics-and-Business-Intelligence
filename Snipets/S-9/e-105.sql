/*
How many annual contracts with a value higher than or equal to $100,000 have been registered
 in the salaries table?

How many managers do we have in the “employees” database? Use the star symbol (*) in your code 
to solve this exercise.
*/

#solution
SELECT
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
#2
select count(emp_no)
from dept_manager;

#solution
SELECT
    COUNT(*)
FROM
    dept_manager;