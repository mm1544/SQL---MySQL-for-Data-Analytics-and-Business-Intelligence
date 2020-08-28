/*
The new and the old join syntax - exercise
Extract a list containing information about all managers’ employee number, first and last name, 
department number, and hire date. Use the old type of join syntax to obtain the result.
*/

SELECT 
    dm.emp_no,
    ee.first_name,
    ee.last_name,
    dm.dept_no,
    dm.from_date
FROM
    dept_manager_dup dm,
    employees ee
WHERE
    dm.emp_no = ee.emp_no;
    
# Solution
SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e,
    dept_manager dm
WHERE
    e.emp_no = dm.emp_no;
    
    
    
# New Join Syntax:

SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no; 