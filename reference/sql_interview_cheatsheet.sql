-- 📌 SQL INTERVIEW CHEAT SHEET --

-- 1️⃣ Retrieve All Records
SELECT * FROM table_name;

-- 2️⃣ Filtering with WHERE
SELECT * FROM Employees WHERE department = 'HR';

-- 3️⃣ Sorting with ORDER BY
SELECT name FROM Students ORDER BY age DESC;

-- 4️⃣ Pattern Matching
SELECT * FROM Products WHERE name LIKE '%phone%';

-- 5️⃣ Aggregate Functions
SELECT COUNT(*), AVG(salary) FROM Employees;

-- 6️⃣ GROUP BY + HAVING
SELECT department, COUNT(*) 
FROM Employees
GROUP BY department
HAVING COUNT(*) > 5;

-- 7️⃣ INNER JOIN
SELECT e.name, d.name
FROM Employees e
JOIN Departments d ON e.dept_id = d.id;

-- 8️⃣ LEFT JOIN
SELECT c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customer_id;

-- 9️⃣ Subquery in WHERE
SELECT name
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- 🔟 EXISTS
SELECT name
FROM Customers c
WHERE EXISTS (
    SELECT 1 FROM Orders o WHERE o.customer_id = c.id
);

-- 🔁 Common Table Expression (CTE)
WITH HighEarners AS (
    SELECT name, salary FROM Employees WHERE salary > 100000
)
SELECT * FROM HighEarners;

-- 🪟 Window Function Example
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;

-- 📋 DISTINCT
SELECT DISTINCT department FROM Employees;

-- ⛓️ UNION vs UNION ALL
SELECT name FROM Customers
UNION
SELECT name FROM Vendors;

-- 💡 Interview Tips
--  Know how to use GROUP BY + HAVING
--  Understand JOINs deeply (especially LEFT and SELF)
--  Practice Subqueries and CTEs
--  Be ready to write queries with filtering, aggregation, and sorting
--  Practice converting business questions into SQL

--  Bonus: Find duplicate rows
SELECT email, COUNT(*)
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;
