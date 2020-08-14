SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
    
###2
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');