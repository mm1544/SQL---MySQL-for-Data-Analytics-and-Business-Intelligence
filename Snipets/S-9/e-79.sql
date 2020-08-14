SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellies'
        OR first_name = 'Aruna');