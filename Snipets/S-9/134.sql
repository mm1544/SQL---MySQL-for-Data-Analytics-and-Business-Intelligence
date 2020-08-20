use employees;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
    
###
UPDATE employees 
SET 
    emp_no = '999901',
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = '99999901';