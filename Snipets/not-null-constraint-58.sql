CREATE TABLE companies (
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (company_id)
);

-- modify the constraint to go back to null
alter table companies
modify company_name varchar(255) null;

-- adding NOT NULL constraint
alter table companies
change column company_name company_name varchar(255) not null;

insert into companies (headquarters_phone_number, company_name)
values ('+44543634069406', 'Company A');

SELECT 
    *
FROM
    companies;

drop table companies;