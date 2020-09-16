SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';

create index i_hire_date on employees(hire_date);

/*******/
SELECT 
    *
FROM
    employees
WHERE
    first_name = ' Georgi'
        AND last_name = 'Facello';
        
create index i_composite on employees(first_name, last_name);

/*
Dropping the index
*/

ALTER TABLE employees

DROP INDEX i_hire_date;