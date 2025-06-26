CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)

DROP TABLE IF EXISTS Authors;
CREATE TABLE Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);

DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT DEFAULT NULL,
  price DOUBLE DEFAULT NULL,
  publication_date DATE DEFAULT NULL,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) DEFAULT NULL,
  address TEXT
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT DEFAULT NULL,
  order_date DATE DEFAULT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

DROP TABLE IF EXISTS Order_Details;
CREATE TABLE Order_Details (
  orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT DEFAULT NULL,
  book_id INT DEFAULT NULL,
  quantity INT DEFAULT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
