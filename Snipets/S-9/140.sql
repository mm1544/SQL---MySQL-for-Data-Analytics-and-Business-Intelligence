SELECT 
    *
FROM
    departments_dup
ORDER BY dep_no;
    
### will delete all the rows from this table
DELETE FROM departments_dup;

rollback;

###
commit;