-- Selecting a Database
USE sql_store;

-- Fetch All(*) the data from customers(Table name)
SELECT *
FROM customers;

-- Fetch All the data from customers where id = 1 
SELECT *
FROM customers
WHERE customer_id = 1;

-- Fetch All the data and Order(sort) by the customer name
SELECT *
FROM customers
WHERE customer_id = 1
ORDER BY first_name;


-- Fetch All the unique state's name from the customers table
SELECT DISTINCT state from customers

-- Excercise -> Return name, unit price, new price(unit price * 1.1) from products(table name)
SELECT name,
unit_price,
unit_price* 1.1 AS 'new price'
FROM products;

-- Comparision Operators

SELECT *
FROM customers
WHERE state != "VA";

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

-- Get the orders placed this Year

SELECT *
FROM orders
WHERE order_date >= '2019-01-01'

-- AND Clause

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' AND points > 1000

-- OR Clause

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points > 1000