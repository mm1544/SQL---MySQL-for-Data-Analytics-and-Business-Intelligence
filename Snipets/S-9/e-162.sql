/*
Another example of using COALESCE() - exercise 1
Select the department number and name from the ‘departments_dup’ table and add a third column 
where you name the department number (‘dept_no’) as ‘dept_info’. If ‘dept_no’ does not have a 
value, use ‘dept_name’.
*/

SELECT 
    dep_no, dept_name, COALESCE(dep_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dep_no ASC;