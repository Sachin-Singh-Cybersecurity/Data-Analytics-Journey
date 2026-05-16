# Level 5 — Python + pandas Data Analysis

## Project Overview
This project introduces beginner-level data analytics using Python and pandas. The project focuses on loading datasets, performing analysis, filtering data, grouping records, and generating business insights.

The analysis was performed on a sales dataset using Python programming and pandas DataFrames.

---

# Tools Used
- Python
- pandas
- CSV Dataset
- Business Analysis

---

# Python Concepts Covered

## Core Python
- Variables
- Lists
- Dictionaries
- Loops
- Functions

## pandas Concepts
- DataFrames
- Dataset Inspection
- Filtering
- Aggregation
- groupby()
- Basic Business Analysis

---

# Business Analysis Tasks Performed

- Total sales analysis
- Average profit calculation
- Maximum sales identification
- Loss-making order detection
- Regional sales analysis
- Category profitability analysis

---

# Example Analysis

## Sales by Region
```python
df.groupby("Region")["Sales"].sum()
```
## Profit by Category
```python
df.groupby("Category")["Profit"].sum()
```
## Loss-Making Orders
```python
df[df["Profit"] < 0]
```
# Key Insights
- Technology category generated the highest profit.
- West region achieved the highest sales.
- Higher discounts were associated with lower profitability.
- Several orders resulted in negative profits.
- Data grouping simplified regional and category analysis.

# Skills Demonstrated
- Python Programming
- pandas Data Analysis
- Dataset Filtering
- Grouped Analysis
- Business Insight Generation
- Analytical Thinking
# Files Included
- `analysis.ipynb`
- `Level5_python_pandas.py`
- `SampleSuperstore.csv`
- `README.md`

# Future Improvements
- matplotlib Visualizations
- Data Cleaning
- Correlation Analysis
- Advanced pandas Operations
- Jupyter Notebook Reporting

# Author
Sachin Singh Tanwar
