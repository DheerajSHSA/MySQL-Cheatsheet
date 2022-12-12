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

-- AND

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' AND points > 1000

-- OR

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points > 1000

-- AND is executed before OR 

-- NOT

SELECT *
FROM customers
WHERE NOT (birth_date >= '1990-01-01' OR points > 1000)

-- IN

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- BETWEEN

SELECT *
FROM customers
WHERE points BETWEEN 1000 and 3000

-- Return Customers born between 1/1/1990 and 1/1/2000

SELECT *
FROM customers
WHERE birth_date
BETWEEN '1990-01-01'
AND '2000-01-01';

-- Return Customers who have last name like 'B____'
SELECT *
FROM customers
WHERE last_name
LIKE 'b%'

-- Return Customers who have last name like 'B____'
SELECT *
FROM customers
WHERE last_name
LIKE 'b____y'

-- % -> any number of characters
-- _ _ two characters 

-- Get the customers whose adresses contain Trail or Avenue and phone numbers end with 9
SELECT *
FROM customers
WHERE address
LIKE '%Avenue'
OR 'Trail'
AND phone
LIKE '%9'

-- NULL OPERATOR
SELECT *
FROM customers
WHERE phone IS NOT NULL

-- Get the orders that are not shipped

SELECT *
FROM orders
WHERE shipped_date
IS NULL

-- Return all the orders with id = 2 , order by total price desc
USE sql_store;
SELECT *,
quantity * unit_price AS 'Total Price'
FROM order_items
WHERE order_id = 2
ORDER BY "Total Price" DESC;
