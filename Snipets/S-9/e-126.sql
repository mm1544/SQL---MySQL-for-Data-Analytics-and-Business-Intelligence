# Select ten records from the “titles” table to get a better idea about its content.

SELECT 
    *
FROM
    titles
LIMIT 10;

/*
Then, in the same table, insert information about employee number 999903. State that he/she 
is a “Senior Engineer”, who has started working in this position on October 1st, 1997.
*/

insert into titles
(
	emp_no,
    title,
    from_date
    
)
value
(
	999903,
    'Senior Engineer',
    '1997-09-01'
);

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903
LIMIT 10;

#####

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;