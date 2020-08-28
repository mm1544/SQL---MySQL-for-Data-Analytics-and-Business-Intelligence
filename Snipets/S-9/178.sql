/*
LEFT JOIN - Part II - exercise
Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose 
last name is Markovitch. See if the output contains a manager with that name.  

Hint: Create an output containing information corresponding to the following fields: ‘emp_no’, 
‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. Order by 'dept_no' descending, and then by 
'emp_no'.
*/

SELECT 
    em.emp_no,
    em.first_name,
    em.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees em
        LEFT JOIN
    dept_manager dm ON em.emp_no = dm.emp_no
WHERE
    em.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC , em.emp_no;
