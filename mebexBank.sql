DROP DATABASE IF EXISTS mebex_bank;
CREATE DATABASE mebex_bank;
USE mebex_bank;

CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    date_of_birth VARCHAR(20) NOT NULL,
    cust_address VARCHAR(50) NOT NULL
);

CREATE TABLE customers_iban(
    customer_id int,
    constraint id_fk foreign key (customer_id) references customers(id),
    iban VARCHAR(100) NOT NULL
);

CREATE TABLE user_authentication(
	id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
	constraint primary key (id)
);

CREATE TABLE user_registration(
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(50) NOT NULL UNIQUE ,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    constraint PRIMARY KEY (id)
);


SELECT * FROM customers_iban;
SELECT * FROM customers;
SELECT * FROM user_authentication;
SELECT * FROM user_registration;

