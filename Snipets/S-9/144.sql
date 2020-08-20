SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

####
SELECT 
    COUNT(salary)
FROM
    salaries;

####
SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;