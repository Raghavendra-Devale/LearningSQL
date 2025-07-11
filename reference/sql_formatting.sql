-- SQL Formatting and Best Practices Guide

-- 1️⃣ Use UPPERCASE for SQL Keywords
SELECT name, age
FROM Students
WHERE age > 20;

-- 2️⃣ Use snake_case or lowercase for table and column names
-- Avoid spaces or camelCase in SQL
SELECT course_name
FROM course_enrollments;

-- 3️⃣ Use indentation for complex queries
SELECT
    s.name,
    c.course_name
FROM
    Students s
    INNER JOIN Enrollments e ON s.student_id = e.student_id
    INNER JOIN Courses c ON e.course_id = c.course_id
WHERE
    c.department = 'Computer Science';

-- 4️⃣ Use aliases (short and meaningful)
SELECT
    s.name AS student_name,
    c.course_name AS enrolled_course
FROM Students AS s
JOIN Enrollments AS e ON s.student_id = e.student_id
JOIN Courses AS c ON c.course_id = e.course_id;

-- 5️⃣ Break long SELECT lists into multiple lines
SELECT
    student_id,
    name,
    age,
    major
FROM Students;

-- 6️⃣ Use consistent indentation (4 spaces or tabs)
-- Choose one style and stick to it across files

-- 7️⃣ Add comments to explain complex logic
-- This helps during debugging and reviews
-- Example: Get all students enrolled in more than 1 course
SELECT s.name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.name
HAVING COUNT(e.course_id) > 1;

-- 8️⃣ Avoid SELECT * in production code
-- Instead, list the required columns explicitly

-- 9️⃣ Terminate SQL statements with semicolons
-- Especially when running multiple statements
