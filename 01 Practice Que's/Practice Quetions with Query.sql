-- 01. Write a query to fetch all columns for all employees, products, customers, orders, orderdetails.
SELECT * FROM employees;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderdetails;

-- 02. Fetch the unique product from the orders table.
SELECT DISTINCT productCode FROM orderdetails;

-- 03. Fetch all details of employees who belong to the 'Sales' department.
SELECT * FROM employees where department = "Sales";

-- 04. Fetch the employee names and their salaries with column aliases "Name" and "Income"
SELECT CONCAT(firstName, ' ', lastName) AS Name,
       COALESCE(NULLIF(salary, 0), 'Intern') AS Income
FROM employees;

-- Data fetch with employees ID
SELECT empID AS ID, CONCAT(firstName, ' ', lastName) AS Name,
       COALESCE(NULLIF(salary, 0), 'Intern') AS Income
FROM employees;

-- 05. Show all products buy price above 50 Dollar.
SELECT * FROM products WHERE buyPrice > 50;

-- 06. Fetch the top 2 highest paid employees in our company.
SELECT * FROM employees ORDER BY salary DESC LIMIT 2;

-- 07. Get employees who are either in Sales or have a salary above 30,000.
SELECT * FROM employees WHERE department = "Sales" OR salary > 30000;

-- 08. Fetch products with a price between 20 and 100.
SELECT * FROM products WHERE buyPrice BETWEEN 20 AND 100;

SELECT productCode AS proID, productName, buyPrice AS price 
FROM products 
WHERE buyPrice BETWEEN 20 AND 100;

-- 09. Retrieve orders where the product is either 'Laptop' or 'Tablet'
SELECT * FROM products WHERE productLine IN ("Laptop", "Tablet");

SELECT o.orderNumber,
       p.productName
FROM orders o
JOIN orderdetails od 
    ON o.orderNumber = od.orderNumber
JOIN products p 
    ON od.productCode = p.productCode
WHERE p.productName IN ('Laptop', 'Tablet');


-- 10. Find employee names starting with 'J'