SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY dept_no;

### To compare with Left Join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY dept_no;



/*
# Deleting duplicate rows
DELETE FROM departments_dup 
WHERE
    dept_no = 'd010';
    
DELETE FROM departments_dup 
WHERE
    dept_no = 'd011';
    
# Inserting deleted rows
insert into departments_dup
(dept_no)
values ('d010');

insert into departments_dup
(dept_no)
values ('d011');
*/
