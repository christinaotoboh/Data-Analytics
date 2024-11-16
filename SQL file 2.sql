CREATE DATABASE pluralcode;

SELECT * FROM sales;

SELECT state FROM sales;

SELECT product, quantity,state FROM sales;

SELECT DISTINCT state FROM sales;

SELECT DISTINCT product FROM sales;

SELECT DISTINCT * FROM sales;

SELECT quantity, state FROM sales WHERE state = "Lagos";

SELECT * FROM sales WHERE event = "None";

SELECT * FROM sales;


SELECT * FROM sales WHERE state IN("Lagos","Ondo","Abuja");

SELECT * FROM sales 
WHERE state = "Abuja" AND event = "Christmas Market";

-- Return the sales details of  Standard shipping method in Bayelsa

SELECT * FROM sales
WHERE shippingMethod = "Standard" AND state = "Bayelsa";

SELECT * FROM sales 
WHERE ShippingMethod = "Standard" OR state = "bayelsa";

SELECT * FROM sales;



SELECT * FROM sales WHERE quantity BETWEEN 1 AND 3;

SELECT * FROM sales WHERE product LIKE "%Black";


-- Return all the products that starts with contoso

SELECT * FROM sales WHERE product LIKE "Contoso%";

-- This query returns products that are cameras
SELECT * FROM sales
WHERE product LIKE "%Camera%"; -- This is a comment

-- WILDCARD

-- This is a single line comment
 
#This is also another single line comment

/* This is 
a 
Multiple
comment
 */
 
 
 
 
-- AGGREGATE FUNCTIONS
-- COUNT, SUM, AVERAGE, MAX, MIN 

SELECT * FROM sales;

SELECT COUNT(Quantity) FROM sales;

SELECT COUNT(DISTINCT product) FROM sales;

SELECT * FROM sales;

SELECT SUM(quantity)FROM sales;

SELECT SUM(`unit price`) FROM sales;

SELECT AVG(quantity) FROM sales;

SELECT AVG(`unit price`) FROM sales;

 -- Alias AS
 
 SELECT AVG(`unit price`) AS Average_Unit_price FROM sales;
 
SELECT quantity AS Total FROM sales;

SELECT MAX(quantity) AS Highest FROm sales;

SELECT MIN(quantity) AS Lowest FROM sales;

-- Group By

SELECT state, SUM(quantity), MAX(`Unit price`) AS total_orders
FROM sales
GROUP BY state;

SELECT SUM(quantity) AS total_orders
FROM sales;

SELECT Product,SUM(quantity) AS total_orders FROM sales
GROUP BY product; 

SELECT * FROM sales;

SELECT CustomerID, AVG(quantity) AS AVG_orders FROM sales
GROUP BY CustomerID; 

SELECT Event, state, SUM(quantity) AS Highest_order FROM sales
GROUP BY Event,state;

SELECT event, SUM(quantity) AS total_orders FROM sales
GROUP BY event
ORDER BY SUM(quantity) DESC;

SELECT product, state, SUM(quantity) AS total_orders
FROM sales
GROUP BY product, state
ORDER BY SUM(quantity) ASC
LIMIT 3;



