### All rows will be updated because 'where' condition is omited.
UPDATE departments_dup 
SET 
    dep_no = 'd011',
    dept_name = 'Quality Control';
    
select *
from departments_dup;

rollback;

commit;
