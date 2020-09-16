/*
Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per
 annum.

Then, create an index on the ‘salary’ column of that table, and check if it has sped up the 
search of the same SELECT statement.
*/

SELECT

    *

FROM

    salaries

WHERE

    salary > 89000;



CREATE INDEX i_salary ON salaries(salary);



SELECT

    *

FROM

    salaries

WHERE

    salary > 89000;