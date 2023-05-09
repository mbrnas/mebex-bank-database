CREATE DATABASE mebex_bank;
USE mebex_bank;

CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    date_of_birth VARCHAR(20) NOT NULL,
    cust_address VARCHAR(50) NOT NULL,
    constraint PRIMARY KEY (id)
);

CREATE TABLE customers_iban(
	id int,
    constraint id_fk foreign key (id) references customers(id),
    iban VARCHAR(100) NOT NULL
);


TRUNCATE TABLE customers;
truncate table customers_iban;
SELECT * FROM customers_iban;
SELECT * FROM customers;