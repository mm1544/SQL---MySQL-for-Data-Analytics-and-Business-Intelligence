use employees;

-- creating employees_dup
drop table if exists employees_dup;

CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

-- duolicating the structure of 'employees' table
insert into employees_dup
select e.*
from employees e
limit 20;

-- inserting duplicate of the first row
insert into employees_dup values
('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

-- UNION VS UNION ALL
-- union all
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    -- adding new columns and filling with null values
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
-- union
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    -- adding new columns and filling with null values
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;