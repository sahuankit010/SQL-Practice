CREATE DATABASE IF NOT EXISTS ONLINE_ORDERING;

USE ONLINE_ORDERING;


/* -- Table name: customer -*/  
CREATE TABLE IF NOT EXISTS customer (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    customer_name VARCHAR(55),  
    account int,  
    email VARCHAR(55)  
);    


/* -- Table name: balance -*/  
CREATE TABLE IF NOT EXISTS balance (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    account int,  
    balance FLOAT(10, 2)  
);  


/* -- Data for customer table -*/  
INSERT INTO customer(customer_name, account, email)  
VALUES('Stephen', 1030, 'stephen@javatpoint.com'),  
    ('Jenifer', 2035, 'jenifer@javatpoint.com'),  
    ('Mathew', 5564, 'mathew@javatpoint.com'),  
    ('Smith', 4534, 'smith@javatpoint.com'),  
    ('David', 7648, 'david@javatpoint.com');  
  
/* -- Data for balance table -*/  
INSERT INTO balance(account, balance)  
VALUES(1030, 50000.00),   
    (2035, 230000.00),   
    (5564, 125000.00),   
    (4534, 80000.00),   
    (7648, 45000.00);  