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