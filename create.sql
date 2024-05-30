CREATE DATABASE IF NOT EXISTS ecommerce;

USE ecommerce;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
product_id VARCHAR(10) PRIMARY KEY,
category VARCHAR(25),
description VARCHAR(250),
unit_price FLOAT
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
customer_id CHAR(6) PRIMARY KEY,
country VARCHAR(50)
);


DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number CHAR(6),
invoice_date DATE,
customer_id CHAR(6),
product_id VARCHAR(10),
quantity INT,
unit_price FLOAT,
line_price FLOAT,
country VARCHAR(20)
);