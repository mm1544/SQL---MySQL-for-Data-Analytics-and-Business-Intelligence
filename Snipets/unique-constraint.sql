drop table customers;
CREATE TABLE customers                                                              

(  
    customer_id INT,  

    first_name varchar(255),  

    last_name varchar(255),  

    email_address varchar(255),  

    number_of_complaints int,  

primary key (customer_id)
-- unique key (email_address)
);  

alter table customers 
add unique key (email_address);

alter table customers
drop index email_address;
