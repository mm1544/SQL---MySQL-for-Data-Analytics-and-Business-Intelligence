# Removing duplicates from tables
DELETE FROM dept_manager_dup 
WHERE
    emp_no = '110228';
    

DELETE FROM departments_dup 
WHERE
    dept_no = 'd009';
    
## Fixing mistake

INSERT INTO dept_manager_dup
select * from dept_manager
where dept_no = 'd009';

###
commit;

####
# Adding back initial records
insert into dept_manager_dup
values ('110228', 'd003', '1992-03-21', '9999-01-01');

insert into departments_dup
values ('d009', 'Customer Service');

############
# Left Join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

###
commit;

############
# Left Join
# Retrieving data for some special case with 'where'
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE
    dept_name IS NULL
GROUP BY m.emp_no
ORDER BY m.dept_no;