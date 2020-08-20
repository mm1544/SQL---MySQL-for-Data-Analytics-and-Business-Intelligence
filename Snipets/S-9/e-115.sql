/*
Select all employees whose average salary is higher than $120,000 per annum.

Hint: You should obtain 101 records.

Compare the output you obtained with the output of the following two queries:

SELECT
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

 
SELECT
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no

HAVING AVG(salary) > 120000;
*/

SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;