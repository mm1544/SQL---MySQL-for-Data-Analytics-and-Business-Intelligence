/*
Another example of using COALESCE() - exercise 2
Modify the code obtained from the previous exercise in the following way. Apply the IFNULL() 
function to the values from the first and second column, so that ‘N/A’ is displayed whenever a 
department number has no value, and ‘Department name not provided’ is shown if there is no value 
for ‘dept_name’.
*/

SELECT 
    IFNULL(dep_no, 'N/A') AS dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name,
    COALESCE(dep_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dep_no ASC;