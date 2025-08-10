# 📚 SQL Practice — Lesson 01

This document contains **SQL practice questions** along with example answers.  
Designed for beginners to intermediate learners preparing for interviews or
building SQL confidence.

---

## 📝 Assignment Questions & Answers

### 1️⃣ Fetch all columns for all employees

```bash
SELECT * FROM employees;
```

2️⃣ Fetch the unique product from the orders table

```bash
SELECT DISTINCT productCode FROM orderdetails;
```

3️⃣ Fetch all details of employees who belong to the 'Sales' department

```bash
SELECT * FROM employees WHERE department = 'Sales';
```

4️⃣ Fetch employee names and their salaries with aliases "Name" and "Income",
show "Intern" if income is 0

```bash
SELECT CONCAT(firstName, ' ', lastName) AS Name,
       COALESCE(NULLIF(salary, 0), 'Intern') AS Income
FROM employees;
```

5️⃣ Show all products with buy price above 50 USD

```bash
SELECT * FROM products WHERE buyPrice > 50;
```

6️⃣ Fetch the top 2 highest paid employees

```bash
SELECT * FROM employees ORDER BY salary DESC LIMIT 2;
```

7️⃣ Get employees who are either in Sales or have a salary above 30,000

```bash
SELECT * FROM employees WHERE department = 'Sales' OR salary > 30000;
```

8️⃣ Fetch products with a price between 20 and 100

```bash
SELECT * FROM products WHERE buyPrice BETWEEN 20 AND 100;
```

9️⃣ Retrieve orders where the product is either 'Laptop' or 'Tablet' (Example
uses productLine for classification — adjust as needed)

```bash
SELECT * FROM products WHERE productLine IN ('Laptop', 'Tablet');
```

🔟 Find employee names starting with 'J'

```bash
SELECT * FROM employees WHERE firstName LIKE 'J%';
```

1️⃣1️⃣ Case-insensitive search for employee names containing 'son'

```bash
SELECT * FROM employees WHERE firstName LIKE '%son%';
```

1️⃣2️⃣ Display employee names with salary category as 'High' if above 35,000, else
'Low'

```bash
SELECT CONCAT(firstName, ' ', lastName) AS Name,
       salary,
       CASE
           WHEN salary > 35000 THEN 'High'
           ELSE 'Low'
       END AS SalaryCategory
FROM employees;
```

1️⃣3️⃣ Show delivery date, but if NULL display 'Pending'

```bash
SELECT orderNumber,
       COALESCE(shippedDate, 'Pending') AS status
FROM orders;
```

1️⃣4️⃣ Compare two columns and return 'SAME' if they match, else show firstName

```bash
SELECT COALESCE(NULLIF(firstName, lastName), 'SAME') AS col FROM employees;
```

1️⃣5️⃣ Display employee names and their salary incremented by 10% as "New Salary"

```bash
SELECT CONCAT(firstName, ' ', lastName) AS Name,
       salary,
       salary * 1.10 AS NewSalary
FROM employees;
```

1️⃣6️⃣ Get employees in 'Sales' or 'Marketing' with salary > 30,000

```bash
SELECT *FROM employees
WHERE (department = 'Sales' OR department = 'Marketing')
  AND salary > 30000;
```

1️⃣7️⃣ Show product name and availability ('In Stock' if quantity > 0, else 'Out
of Stock')

```bash
SELECT productName,
       CASE
           WHEN quantityInStock > 0 THEN 'In Stock'
           ELSE 'Out of Stock'
       END AS availability
FROM products;
```

1️⃣8️⃣ Display customer names and delivery dates, show 'Not Delivered' if NULL

```bash
SELECT customerName,
       COALESCE(deliveryDate, 'Not Delivered') AS deliveryStatus
FROM orders;
```

1️⃣9️⃣ Retrieve products with name containing 'a' (case-insensitive) and price
50–200, ordered by price

```bash
SELECT *
FROM products
WHERE productName LIKE '%a%'
  AND buyPrice BETWEEN 50 AND 200
ORDER BY buyPrice ASC;
```

2️⃣0️⃣ Count the number of different products sold

```bash
SELECT COUNT(DISTINCT productCode) AS productCount
FROM orderdetails;
```

2️⃣1️⃣ Count how many employees have salaries above 70,000

```bash
SELECT COUNT(*) AS highEarners
FROM employees
WHERE salary > 70000;
```
