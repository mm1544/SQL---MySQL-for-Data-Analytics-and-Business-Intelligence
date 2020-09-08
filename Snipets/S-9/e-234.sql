/*
User-defined functions in MySQL - exercise

Create a function called ‘emp_info’ that takes for parameters the first and last name of an 
employee, and returns the salary from the newest contract of that employee.

Hint: In the BEGIN-END block of this program, you need to declare and use two variables – 
v_max_from_date that will be of the DATE type, and v_salary, that will be of the DECIMAL (10,2) 
type.

Finally, select this function.
*/

use employees;

/*Solution*/
DELIMITER $$
CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
	DECLARE v_max_from_date date;
    DECLARE v_salary decimal(10,2);
    
SELECT 
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;



SELECT 
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;

       

                RETURN v_salary;



END$$



DELIMITER ;



SELECT EMP_INFO('Aruna', 'Journel');

/*
delimiter $$
create function emp_info(p_first_name varchar(255), p_last_name varchar(255)) returns integer

begin
	declare v_max_from_date DATE;
    declare v_salary DECIMAL (10,2);
    
	select s.salary
    into v_salary 
    from salaries s
    
    
	from employees e
	where e.first_name = p_first_name and e.last_name = p_last_name;
end$$
*/
