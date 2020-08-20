insert into employees
values
(
 999903,
 '1977-09-13',
 'Johnathan',
 'Creek',
 'M',
 '1999-01-01'
 );
 
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;