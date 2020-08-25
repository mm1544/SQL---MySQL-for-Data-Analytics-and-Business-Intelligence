/*
If you currently have the ‘departments_dup’ table set up, use DROP COLUMN to remove the 
‘dept_manager’ column from the ‘departments_dup’ table.
*/
alter table departments_dup
drop column dept_manager;

/*
Then, use CHANGE COLUMN to change the ‘dept_no’ and ‘dept_name’ columns to NULL.
*/
ALTER TABLE departments_dup

CHANGE COLUMN dep_no dept_no CHAR(4) NULL;


####
# if you don’t currently have ‘departments_dup’ set up

DROP TABLE IF EXISTS departments_dup;

CREATE TABLE departments_dup (
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(40) NULL
);


#####
INSERT INTO departments_dup
(
    dept_no,
    dept_name
)SELECT *
FROM departments;

#####
# Then, insert a record whose department name is “Public Relations”.

INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');

#####
# Delete the record(s) related to department number two.

DELETE FROM departments_dup 
WHERE
    dept_no = 'd002'; 

#####
/*
Insert two new records in the “departments_dup” table. Let their values in the “dept_no” 
column be “d010” and “d011”.
*/

INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');