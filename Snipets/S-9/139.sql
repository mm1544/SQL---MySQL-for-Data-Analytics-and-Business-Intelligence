### delete statement

use employees;


###
commit;

####
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
####
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
####
DELETE FROM employees 
WHERE
    emp_no = 999903;
    
    
####    
rollback;

####
commit;