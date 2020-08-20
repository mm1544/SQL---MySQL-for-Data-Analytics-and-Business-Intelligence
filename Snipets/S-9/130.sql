SELECT 
    *
FROM
    departments
LIMIT 10;

# creating new table

CREATE TABLE departments_dup (
    dep_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

# importind data from 'departments' to 'departments_dup'

insert into departments_dup
(
	dep_no,
    dept_name
)
SELECT 
    *
FROM
    departments;
    
