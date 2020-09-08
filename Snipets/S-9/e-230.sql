/*
Variables - exercise

Create a variable, called ‘v_emp_no’, where you will store the output of the procedure you created
 in the last exercise.

Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name 
respectively.

Finally, select the obtained output.
*/

set @v_emp_no = 0;
call employees.emp_info('Aruna', 'Journel', @v_emp_no);
select @v_emp_no;