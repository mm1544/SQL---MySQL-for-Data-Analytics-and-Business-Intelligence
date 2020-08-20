insert into employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
)
values
(
	99999901,
	'1984-04-12',
	'John',
	'Doe',
    'M',
	'2020-12-01'
);

####
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 99999901;

####
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

