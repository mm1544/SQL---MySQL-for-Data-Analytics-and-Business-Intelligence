SELECT 
    d.dept_name, AVG(salary) AS average_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY dept_name
## 'having' is used to put condition onto 'group by'
HAVING average_salary > 60000
ORDER BY average_salary DESC;