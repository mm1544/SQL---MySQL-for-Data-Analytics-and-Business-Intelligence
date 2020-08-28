/*
CROSS JOIN - exercise 1
Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
*/

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009'
ORDER BY dm.emp_no;

###########
# Solution

SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_name;



# 2
/*
CROSS JOIN - exercise 2
Return a list with the first 10 employees with all the departments they can be assigned to.

Hint: Don’t use LIMIT; use a WHERE clause.
*/

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no <= 10010
ORDER BY e.emp_no, d.dept_no;


