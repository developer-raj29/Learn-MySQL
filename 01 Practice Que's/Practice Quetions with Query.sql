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

-- 06. Fetch the top 2 highest paid employees in our company.

-- 07. Get employees who are either in Sales or have a salary above 30,000.

-- 08. Fetch products with a price between 20 and 100.

-- 09. Retrieve orders where the product is either 'Laptop' or 'Tablet'

-- 10. Find employee names starting with 'J'