-- Common SQL Constraints

-- PRIMARY KEY: Uniquely identifies a row
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
);

-- NOT NULL: Prevents NULL values
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- UNIQUE: Ensures all values are different
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    sku VARCHAR(50) UNIQUE
);

-- DEFAULT: Sets default value if none provided
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    status VARCHAR(20) DEFAULT 'Pending'
);

-- CHECK: Ensures a condition is met
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    score INT CHECK (score BETWEEN 0 AND 100)
);

-- FOREIGN KEY: Maintains referential integrity
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
