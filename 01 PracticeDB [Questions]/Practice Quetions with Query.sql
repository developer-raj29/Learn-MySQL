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
SELECT * FROM employees WHERE firstName LIKE "J%";

-- 11. Case-insensitive search for employee names containing 'son'
SELECT * FROM employees WHERE firstName LIKE '%son%';

-- 12. Display employee names with salary category as 'High' if above 35,000, else 'Low'
SELECT CONCAT(firstName, " ", lastName) as Name, salary,
       CASE
          WHEN salary > 35000 THEN "HIGH"
          WHEN salary > 30000 THEN "MEDIUM"
          ELSE "LOW"
       END as Salary
FROM employees;

-- 13. Show delivery date, but if NULL display 'Pending'
SELECT orderNumber, orderDate, 
       COALESCE(IFNULL(shippedDate, "Pending")) as Status
FROM orders;

-- 14. Compare two columns and return 'SAME' if they match, else show firstName
SELECT empId, COALESCE(NULLIF(firstName, lastName), 'SAME') AS col 
FROM employees;

-- 15. Display employee names and their salary incremented by 10% as "New Salary"
SELECT empId, CONCAT(firstName, " ", lastName) as Name,
      salary, salary * 10/100 AS New_Salary
FROM employees;

-- 16. Get employees in 'Sales' or 'Marketing' with salary > 30,000
SELECT * 
FROM employees 
WHERE (department = "Sales" OR "Marketing") AND salary > 30000;

-- 17.  Show product name and availability ('In Stock' if quantity > 0, else 'Out of Stock')
SELECT productName, buyPrice, 
	CASE 
	   WHEN quantityInStock > 0 THEN "In Stock"
       ELSE "Out of Stock"
	END AS Availability
FROM products; 

-- 18. Display customer names and delivery dates, show 'Not Delivered' if NULL
SELECT orderNumber, customerNumber, customerName,
       COALESCE(shippedDate, 'Not Delivered') AS deliveryStatus
FROM orders;

-- 19. Retrieve products with name containing 'a' (case-insensitive) and price 50–200, ordered by price
SELECT * 
FROM products 
WHERE productName LIKE "%a%" AND buyPrice BETWEEN 20 AND 200 ORDER BY buyPrice ASC;

-- 20. Count the number of different products sold


-- 21. Count how many employees have salaries above 70,000