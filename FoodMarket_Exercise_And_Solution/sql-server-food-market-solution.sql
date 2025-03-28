-- Create the FoodMarket database
CREATE DATABASE FoodMarket

GO

-- Create the customers table
USE FoodMarket;

CREATE TABLE customers (
id INT IDENTITY (1000,1) PRIMARY KEY,
name VARCHAR (255),
address VARCHAR (255),
phone CHAR (13)
)

GO

-- Insert three sample customers
INSERT INTO customers (name, address, phone)
VALUES ('John Johnson', 'Despota Stefana 6', FORMAT(611122333, '0##/##-##-###')),
       ('Brad Davies', 'Kraljice Natalije 9', FORMAT(642345478, '0##/##-##-###')),
	   ('Anna Thomas', 'Kralja Milana 3', FORMAT(609876543, '0##/##-##-###'))

GO

-- Create the sales orders table
USE FoodMarket;

CREATE TABLE sales_orders (
order_no INT IDENTITY(1,1) PRIMARY KEY,
customer_id INT,
FOREIGN KEY (customer_id) 
	REFERENCES customers (id), 
ordered_product CHAR (10),
quantity INT,
price DECIMAL (10,2),
note VARCHAR (255)
)

GO

-- Insert 10 different products purchased by the customers
INSERT INTO sales_orders (customer_id, ordered_product, quantity, price, note)
VALUES (1000, 'apple', 1, 1.50, 'Apples available in 2024'),
	   (1000, 'bread', 3, 2.00, 'Please handle deliveries with care'),
	   (1001, 'milk', 1, 5.99, 'Fresh milked delivered daily'),
	   (1001, 'chocolate', 11, 10.00, 'Large quantities of chocolates available for daily delivery'),
	   (1000, 'lemon', 5, 5.00, 'Seasonal fruit - please check availability'),
	   (1002, 'watermelon', 2, 15.99, '10kg watermelons available'),
	   (1001, 'banana', 5, 20.99, 'Bananas will not be available in May'),
	   (1002, 'avocado', 6, 18.00, 'Avocado sale starting in August'),
	   (1002, 'pineapple', 1, 3.50, 'Pineapples available every other month'),
	   (1002, 'grapefruit', 7, 3.00, 'Fresh grapefruit in stock')

GO

-- Retrieve all products purchased by each customer
SELECT customer_id
	  ,ordered_product
FROM sales_orders

-- List all orders where more than one product was ordered
SELECT * FROM sales_orders WHERE quantity >1

-- Count the total number of orders, grouped by Customer ID
SELECT customer_id, COUNT(*) as total_orders
FROM sales_orders
GROUP BY customer_id;

