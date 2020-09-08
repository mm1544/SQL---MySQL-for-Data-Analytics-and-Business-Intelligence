/*
Views - exercise
Create a view that will extract the average salary of all managers registered in the database.
 Round this value to the nearest cent.

If you have worked correctly, after executing the view from the “Schemas” section in Workbench, 
you should obtain the value of 66924.27.
*/

/* Views  */
CREATE OR REPLACE VIEW v_manager_avg_salary AS
    SELECT 
        ROUND(AVG(salary), 2), s.emp_no
    FROM
        salaries s
            JOIN
        dept_manager m ON s.emp_no = m.emp_no
    GROUP BY s.emp_no;
