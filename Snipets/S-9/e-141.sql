/*
The DELETE Statement – Part II - exercise
Remove the department number 10 record from the “departments” table.
*/

select * from departments;

delete from departments
where dept_no = 'd010';

rollback;

commit;