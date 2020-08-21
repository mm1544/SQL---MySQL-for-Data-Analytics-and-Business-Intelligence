####
SELECT 
    dep_no,
    IFNULL(dept_name,
            'Department name is not provided') AS dept_name
FROM
    departments_dup;
    
####
SELECT 
    dep_no,
    COALESCE(dept_name,
            'Department name is not provided') AS dept_name
FROM
    departments_dup;
    
    
####
SELECT 
    dep_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dep_no ASC;