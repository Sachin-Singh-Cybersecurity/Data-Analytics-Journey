# Level 2 — SQL Fundamentals for Data Analysis

## Project Overview
This project contains SQL practice queries focused on beginner-level data analysis concepts. The exercises simulate real business analysis scenarios using an `Orders` dataset.

The project demonstrates how SQL can be used to:
- retrieve data
- filter records
- sort results
- summarize business metrics
- analyze profitability and sales performance

---

# Tools Used
- SQL
- SQLite / SQLBolt
- Relational Database Concepts

---

# SQL Concepts Covered

## 1. SELECT
Used to retrieve specific columns or complete data from tables.

## 2. WHERE
Used to filter rows based on conditions.

## 3. ORDER BY
Used to sort query results in ascending or descending order.

## 4. LIMIT
Used to restrict the number of returned rows.

## 5. Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

## 6. GROUP BY
Used for grouped business analysis similar to Excel Pivot Tables.

## 7. HAVING
Used to filter grouped results after aggregation.

---

# Business Analysis Tasks Performed

- Total sales analysis
- Profitability analysis
- Loss-making order identification
- Regional sales comparison
- Category performance analysis
- Discount impact observations
- Top-performing region identification

---

# Example SQL Queries

## Total Sales by Category
```sql
SELECT Category, SUM(Sales) AS "Total Sales"
FROM Orders
GROUP BY Category;
```
## Top 3 Most Profitable Regions
```sql
SELECT Region, SUM(Profit) AS "Total Profit"
FROM Orders
GROUP BY Region
ORDER BY SUM(Profit) DESC
LIMIT 3;
```
## Total Loss-Making Orders
```sql
SELECT COUNT(*) AS "Total Loss Making Orders"
FROM Orders
WHERE Profit < 0;
```

# Key Insights
- Technology category generated the highest profit.
- Higher discounts appeared to reduce profitability.
- Central region showed weaker profitability compared to other regions.
- SQL queries can efficiently summarize and analyze large datasets.
- GROUP BY operations work similarly to Excel Pivot Tables.

# Skills Demonstrated
- SQL query writing
- Data filtering and sorting
- Aggregate calculations
- Grouped business analysis
- Analytical thinking
- Relational database understanding

# Author
Sachin Singh Tanwar

