
# SQL Developer Internship : Writing Basic SELECT Queries
## 📌 Objective

The objective of this task is to practice retrieving data from one or more tables using different SQL query clauses.
This includes understanding projection, filtering, sorting, and limiting output.

# 🛠 Tools Used

DB Browser for SQLite

SQLiteStudio

MySQL Workbench

# 📖 Interview Questions & Answers

- What does SELECT * do?
It retrieves all columns from a table.
👉 Example: SELECT * FROM Employee;

- How do you filter rows?
By using the WHERE clause.
👉 Example: SELECT * FROM Employee WHERE department = 'IT';

- What is LIKE '%value%'?
It is used for pattern matching in strings.
👉 Example: SELECT * FROM Employee WHERE name LIKE '%an%';

- What is BETWEEN used for?
It filters rows within a range of values.
👉 Example: SELECT * FROM Employee WHERE salary BETWEEN 30000 AND 50000;

- How do you limit output rows?
By using the LIMIT keyword.
👉 Example: SELECT * FROM Employee LIMIT 5;

- Difference between = and IN?
= checks for a single value, while IN checks against multiple values.
👉 Example:
SELECT * FROM Employee WHERE department = 'IT';
SELECT * FROM Employee WHERE department IN ('IT', 'HR');

- How to sort in descending order?
Using ORDER BY column DESC.
👉 Example: SELECT * FROM Employee ORDER BY salary DESC;

- What is aliasing?
Aliasing renames a column or table temporarily.
👉 Example: SELECT name AS EmployeeName FROM Employee;

- Explain DISTINCT.
It removes duplicate values from the result set.
👉 Example: SELECT DISTINCT department FROM Employee;

- What is the default sort order?
Ascending (ASC) is the default order if not specified.

# 📂 Deliverables

SQL Script (select_queries.sql)

SELECT * and column-based selection

WHERE filtering with AND, OR, LIKE, BETWEEN

ORDER BY sorting

LIMIT rows

README File

Explanation of task and concepts

Interview questions with answers

# 📑 Key Concepts Covered

Projection (SELECT)

Filtering (WHERE)

Pattern Matching (LIKE)

Range Filtering (BETWEEN)

Sorting (ORDER BY)

Limiting Output (LIMIT)

Removing Duplicates (DISTINCT)

Aliasing (AS)

# 📌 Data Source Example Link

<a href="https://github.com/pavan4557/database-schema-design-task3/blob/main/sql%20code.sql">SQL Code</a>
