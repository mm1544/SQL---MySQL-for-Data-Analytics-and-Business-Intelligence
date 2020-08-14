CREATE TABLE customers (

    customer_id INT AUTO_INCREMENT,

    first_name VARCHAR(255),

    last_name VARCHAR(255),

    email_address VARCHAR(255),

    number_of_complaints INT,

PRIMARY KEY (customer_id)

);

alter table customers
change column number_of_complaints number_of_complaints int default 0;

-- adding an entry for testing
insert into customers (first_name, last_name, gender)
values ('Peter', 'Figaro', 'M');

select * from customers;

alter table customers
alter column number_of_complaints drop default;

