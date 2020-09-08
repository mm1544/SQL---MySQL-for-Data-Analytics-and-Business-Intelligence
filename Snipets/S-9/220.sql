use employees;

drop procedure if exists select_employees;

delimiter $$
create procedure select_employees()
begin
		select * from employees
        limit 1000;
end$$

delimiter ;

call employees.select_employees(); 