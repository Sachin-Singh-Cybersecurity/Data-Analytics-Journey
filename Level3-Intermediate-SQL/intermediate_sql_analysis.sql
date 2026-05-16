-- Day 3 Intermediate SQL Practice File
-- Data Analyst Intermediate SQL Concepts

-- =====================================
-- STEP 1: DISTINCT
-- =====================================

-- Show unique categories
SELECT DISTINCT Category
FROM Orders;

-- Show unique regions
SELECT DISTINCT Region
FROM Orders;

-- Show unique states
SELECT DISTINCT State
FROM Orders;


-- =====================================
-- STEP 2: IN OPERATOR
-- =====================================

-- Show rows where Region is West or Central
SELECT *
FROM Orders
WHERE Region IN ('West', 'Central');

-- Show rows where Category is Technology or Office Supplies
SELECT *
FROM Orders
WHERE Category IN ('Technology', 'Office Supplies');

-- Show Sales and Profit where State is California or Texas
SELECT Sales, Profit
FROM Orders
WHERE State IN ('California', 'Texas');


-- =====================================
-- STEP 3: BETWEEN
-- =====================================

-- Show rows where Profit is between 100 and 500
SELECT *
FROM Orders
WHERE Profit BETWEEN 100 AND 500;

-- Show Sales and Category where Sales is between 500 and 2000
SELECT Sales, Category
FROM Orders
WHERE Sales BETWEEN 500 AND 2000;

-- Show rows where Discount is between 0.2 and 0.5
SELECT *
FROM Orders
WHERE Discount BETWEEN 0.2 AND 0.5;


-- =====================================
-- STEP 4: NULL HANDLING
-- =====================================

-- Show rows where Profit is NULL
SELECT *
FROM Orders
WHERE Profit IS NULL;

-- Show rows where Sales is NOT NULL
SELECT *
FROM Orders
WHERE Sales IS NOT NULL;

-- Show Category and Profit where Profit is NOT NULL
SELECT Category, Profit
FROM Orders
WHERE Profit IS NOT NULL;


-- =====================================
-- STEP 5: CASE WHEN
-- =====================================

-- Create Profit Status column
SELECT Profit,
CASE
    WHEN Profit > 0 THEN 'Profit'
    ELSE 'Loss'
END AS Profit_Status
FROM Orders;

-- Create Sales Level column
SELECT Sales,
CASE
    WHEN Sales >= 1000 THEN 'High Sales'
    ELSE 'Low Sales'
END AS Sales_Level
FROM Orders;

-- Create Discount Type column
SELECT Discount,
CASE
    WHEN Discount >= 0.3 THEN 'High Discount'
    ELSE 'Low Discount'
END AS Discount_Type
FROM Orders;


-- =====================================
-- STEP 6: INNER JOIN
-- =====================================

-- Show Customer_Name and Profit
SELECT Customer_Name, Profit
FROM Customers
INNER JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;

-- Show Customer_Name, City, and Sales
SELECT Customer_Name, City, Sales
FROM Customers
INNER JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;

-- Show all columns from both tables
SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;


-- =====================================
-- STEP 7: INNER JOIN USING ALIASES
-- =====================================

-- Using table aliases for cleaner SQL
SELECT c.Customer_Name, o.Sales, o.Profit
FROM Customers c
INNER JOIN Orders o
ON c.Customer_ID = o.Customer_ID;


-- =====================================
-- END OF DAY 3 SQL PRACTICE
-- =====================================

-- Concepts Learned:
-- DISTINCT
-- IN
-- BETWEEN
-- NULL Handling
-- CASE WHEN
-- INNER JOIN
-- Table Aliases
-- Business Logic in SQL
