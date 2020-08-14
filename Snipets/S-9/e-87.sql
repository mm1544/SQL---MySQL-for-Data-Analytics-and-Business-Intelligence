SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
###2
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
###3
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');