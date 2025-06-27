CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT
);

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
