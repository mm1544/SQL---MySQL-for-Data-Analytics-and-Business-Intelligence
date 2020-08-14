SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;
    
    
###2
/*
Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.*/
SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    
    
###3
-- Select the names of all departments with numbers between ‘d003’ and ‘d006’.
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';