-- Day 2 SQL Practice File
-- Beginner Data Analyst SQL Fundamentals

-- =====================================
-- STEP 1: BASIC SELECT QUERIES
-- =====================================

-- Show Category column
SELECT Category
FROM Orders;

-- Show Region and Sales columns
SELECT Region, Sales
FROM Orders;

-- Show all columns
SELECT *
FROM Orders;


-- =====================================
-- STEP 2: WHERE CLAUSE
-- =====================================

-- Show all rows where Region = 'Central'
SELECT *
FROM Orders
WHERE Region = 'Central';

-- Show Sales and Profit where Profit < 0
SELECT Sales, Profit
FROM Orders
WHERE Profit < 0;

-- Show all Furniture category rows
SELECT *
FROM Orders
WHERE Category = 'Furniture';


-- =====================================
-- STEP 3: ORDER BY
-- =====================================

-- Order rows by Profit highest to lowest
SELECT *
FROM Orders
ORDER BY Profit DESC;

-- Order Region and Sales by Sales lowest to highest
SELECT Region, Sales
FROM Orders
ORDER BY Sales;

-- Order Category and Profit by Profit descending
SELECT Category, Profit
FROM Orders
ORDER BY Profit DESC;


-- =====================================
-- STEP 4: LIMIT
-- =====================================

-- Show first 10 rows
SELECT *
FROM Orders
LIMIT 10;

-- Show top 5 highest profit rows
SELECT *
FROM Orders
ORDER BY Profit DESC
LIMIT 5;

-- Show lowest 3 sales rows
SELECT *
FROM Orders
ORDER BY Sales
LIMIT 3;


-- =====================================
-- STEP 5: AGGREGATE FUNCTIONS
-- =====================================

-- Total Profit
SELECT SUM(Profit) AS "Total Profit"
FROM Orders;

-- Average Sales
SELECT AVG(Sales) AS "Average Sales"
FROM Orders;

-- Minimum Profit
SELECT MIN(Profit) AS "Minimum Profit"
FROM Orders;

-- Total Orders
SELECT COUNT(*) AS "Total Orders"
FROM Orders;


-- =====================================
-- STEP 6: GROUP BY
-- =====================================

-- Total Sales by Category
SELECT Category, SUM(Sales) AS "Total Sales"
FROM Orders
GROUP BY Category;

-- Average Profit by Region
SELECT Region, AVG(Profit) AS "Average Profit"
FROM Orders
GROUP BY Region;

-- Total Orders by Category
SELECT Category, COUNT(*) AS "Total Orders"
FROM Orders
GROUP BY Category;

-- Maximum Sales by Region
SELECT Region, MAX(Sales) AS "Maximum Sales"
FROM Orders
GROUP BY Region;


-- =====================================
-- STEP 7: BUSINESS-STYLE SQL QUESTIONS
-- =====================================

-- Total Sales generated from Technology category
SELECT SUM(Sales) AS "Total Sales"
FROM Orders
WHERE Category = 'Technology';

-- Top 3 most profitable regions
SELECT Region, SUM(Profit) AS "Total Profit"
FROM Orders
GROUP BY Region
ORDER BY SUM(Profit) DESC
LIMIT 3;

-- Categories with negative average profit
SELECT Category, AVG(Profit) AS "Average Profit"
FROM Orders
GROUP BY Category
HAVING AVG(Profit) < 0;

-- Total number of loss-making orders
SELECT COUNT(*) AS "Total Loss Making Orders"
FROM Orders
WHERE Profit < 0;

-- Region with highest total sales
SELECT Region, SUM(Sales) AS "Total Sales"
FROM Orders
GROUP BY Region
ORDER BY SUM(Sales) DESC
LIMIT 1;


-- =====================================
-- END OF DAY 2 SQL PRACTICE
-- =====================================

-- Concepts Learned:
-- SELECT
-- WHERE
-- ORDER BY
-- LIMIT
-- COUNT
-- SUM
-- AVG
-- MAX
-- MIN
-- GROUP BY
-- HAVING
-- Business Analysis Queries
