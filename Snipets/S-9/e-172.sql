/*
INNER JOIN - Part II - exercise
Extract a list containing information about all managers’ employee number, first and last name, 
department number, and hire date
*/

SELECT 
    d.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    dept_manager_dup d
        INNER JOIN
    employees e ON d.emp_no = e.emp_no
ORDER BY d.emp_no;

#####
# Solution

SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;