# Level 3 — Intermediate SQL for Data Analysis

## Project Overview
This project focuses on intermediate SQL concepts used in real-world data analysis. The exercises simulate business-oriented analytical tasks using relational database queries.

The project demonstrates how SQL can be used to:
- combine data from multiple tables
- categorize business conditions
- create advanced filters
- perform nested analysis
- solve analytical business problems

---

# Tools Used
- SQL
- SQLite / SQLBolt
- Relational Databases

---

# SQL Concepts Covered

## 1. JOIN Operations
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN (conceptual understanding)
- Combining related tables using common keys

## 2. CASE WHEN
Used to create conditional logic inside SQL queries.

Examples:
- Profit vs Loss classification
- Sales category grouping
- Customer segmentation

## 3. Subqueries
Queries written inside another query to perform layered analysis.

## 4. Advanced Filtering
Using:
- AND
- OR
- IN
- BETWEEN
- LIKE

## 5. Analytical SQL Queries
Business-oriented problem solving using SQL logic.

---

# Business Analysis Tasks Performed

- Customer order analysis
- Regional profitability comparison
- High-value customer identification
- Loss-making product analysis
- Sales segmentation
- Order classification
- Revenue trend analysis

---

# Example SQL Queries

## INNER JOIN Example
```sql
SELECT Orders.Order_ID, Customers.Customer_Name
FROM Orders
INNER JOIN Customers
ON Orders.Customer_ID = Customers.Customer_ID;
```
## CASE WHEN Example
```sql
SELECT Category,
       Profit,
       CASE
           WHEN Profit > 0 THEN 'Profit'
           ELSE 'Loss'
       END AS Profit_Status
FROM Orders;
```
## Subquery Example
```sql
SELECT *
FROM Orders
WHERE Sales > (
    SELECT AVG(Sales)
    FROM Orders
);
```

# Key Insights
- JOIN operations help combine related business information from multiple tables.
- CASE WHEN improves analytical categorization directly inside SQL queries.
- Subqueries enable layered and advanced business analysis.
- SQL can solve complex analytical problems efficiently on large datasets.
- Proper filtering significantly improves targeted business analysis.

# Skills Demonstrated
- Intermediate SQL query writing
- Relational table understanding
- Data categorization
- Business problem solving
- Advanced filtering logic
- Analytical SQL thinking

# Author
Sachin Singh Tanwar
