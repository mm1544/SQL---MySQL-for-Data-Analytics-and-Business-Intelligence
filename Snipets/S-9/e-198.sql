/*
Tips and tricks for joins - exercise
How many male and how many female managers do we have in the ‘employees’ database?
*/

SELECT 
    e.gender, COUNT(m.emp_no)
FROM
    dept_manager m
        JOIN
    employees e ON e.emp_no = m.emp_no
GROUP BY gender;

# Solution
SELECT 
    e.gender, COUNT(dm.emp_no)
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;
