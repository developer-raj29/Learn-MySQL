# 📚 sql Practice — Sales & Orders

This repository contains **`sql practice questions`** with example solutions.  
It is designed for learners preparing for interviews or improving `sql skills`.

---

## 📝 Assignment Questions & Answers

### 1️⃣ Produce the order no, amount, and date of all orders

```sql
SELECT order_no, purchase_amt, order_date
FROM orders;
```

### 2️⃣ Give all the information about all the customers with salesman number 1001

```sql
SELECT *
FROM customers
WHERE salesman_id = 1001;
```

### 3️⃣ Display city, sname, snum, and commission in the given order

```sql
SELECT city, sname, snum, commission
FROM salesmen
ORDER BY city, sname, snum, commission;
```

### 4️⃣ List rating followed by the name of each customer in Surat

```sql
SELECT rating, cname
FROM customers
WHERE city = 'Surat';
```

### 5️⃣ List snum of all salesmen with orders in the order table (no duplicates)

```sql
SELECT DISTINCT salesman_id
FROM orders;
```

### 6️⃣ List all orders for more than Rs. 1000

```sql
SELECT *
FROM orders
WHERE purchase_amt > 1000;
```

### 7️⃣ Names and cities of salesmen in London with commission above 10%

```sql
SELECT sname, city
FROM salesmen
WHERE city = 'London' AND commission > 0.10;
```

### 8️⃣ List all customers whose names begin with 'C'

```sql
SELECT *
FROM customers
WHERE cname LIKE 'C%';
```

### 9️⃣ List all customers whose names begin with letter 'A' to 'G'

```sql
SELECT *
FROM customers
WHERE cname BETWEEN 'A' AND 'H';
```

### 🔟 List all orders with zero or NULL amount

```sql
SELECT *
FROM orders
WHERE purchase_amt = 0 OR purchase_amt IS NULL;
```

### 1️⃣1️⃣ Largest orders of salesman 1002 and 1007

```sql
SELECT *
FROM orders
WHERE salesman_id IN (1002, 1007)
ORDER BY purchase_amt DESC
LIMIT 1;
```

### 1️⃣2️⃣ Count all orders of October 3, 1997

```sql
SELECT COUNT(*) AS order_count
FROM orders
WHERE order_date = '1997-10-03';
```

### 1️⃣3️⃣ Calculate the total amount ordered

```sql
SELECT SUM(purchase_amt) AS total_amount
FROM orders;
```

### 1️⃣4️⃣ Calculate the average amount ordered

```sql
SELECT AVG(purchase_amt) AS average_amount
FROM orders;
```

### 1️⃣5️⃣ Count the number of salesmen currently having orders

```sql
SELECT COUNT(DISTINCT salesman_id) AS active_salesmen
FROM orders;
```

### 1️⃣6️⃣ List all salesmen with their % of commission

```sql
SELECT sname, commission * 100 AS commission_percent
FROM salesmen;
```

### 1️⃣7️⃣ Commission calculation (12% rate) for each order

```sql
SELECT order_no, salesman_id,
       purchase_amt * 0.12 AS commission_amount
FROM orders;
```

### 1️⃣8️⃣ Find the highest rating in each city in the form: For the city (city), the highest rating is: (rating)

```sql
SELECT CONCAT('For the city ', city, ', the highest rating is: ', MAX(rating)) AS result
FROM customers
GROUP BY city;
```

### 1️⃣9️⃣ List all customers in descending order of rating

```sql
SELECT *
FROM customers
ORDER BY rating DESC;
```

### 2️⃣0️⃣ Calculate the total of orders for each day (descending order)

```sql
SELECT order_date, SUM(purchase_amt) AS total_amount
FROM orders
GROUP BY order_date
ORDER BY total_amount DESC;
```

### 2️⃣1️⃣ Show the name of all customers with their salesman's name

```sql
SELECT c.cname, s.sname
FROM customers c
JOIN salesmen s ON c.salesman_id = s.snum;
```

### 2️⃣2️⃣ List all customers and salesmen who share the same city

```sql
SELECT c.cname, s.sname, c.city
FROM customers c
JOIN salesmen s ON c.city = s.city;
```

### 2️⃣3️⃣ List all orders with the names of their customer and salesman

```sql
SELECT o.order_no, c.cname, s.sname, o.purchase_amt
FROM orders o
JOIN customers c ON o.customer_id = c.cnum
JOIN salesmen s ON o.salesman_id = s.snum;
```

### 2️⃣4️⃣ Orders by customers not located in the same city as their salesman

```sql
SELECT o.order_no, c.cname, s.sname, c.city AS customer_city, s.city AS salesman_city
FROM orders o
JOIN customers c ON o.customer_id = c.cnum
JOIN salesmen s ON o.salesman_id = s.snum
WHERE c.city <> s.city;
```

### 2️⃣5️⃣ Customers serviced by salespeople with commission above 12%

```sql
SELECT c.*
FROM customers c
JOIN salesmen s ON c.salesman_id = s.snum
WHERE s.commission > 0.12;
```

### 2️⃣6️⃣ Salesman commission on each order by customers with rating > 100

```sql
SELECT o.order_no, o.salesman_id, o.purchase_amt,
       o.purchase_amt * s.commission AS commission_amount
FROM orders o
JOIN customers c ON o.customer_id = c.cnum
JOIN salesmen s ON o.salesman_id = s.snum
WHERE c.rating > 100;
```

### 2️⃣7️⃣ Pairs of customers with the same rating (no duplicates)

```sql
SELECT a.cname AS customer1, b.cname AS customer2, a.rating
FROM customers a
JOIN customers b ON a.rating = b.rating AND a.cnum < b.cnum;
```

### 2️⃣8️⃣ Orders greater than the average of October 4, 1997

```sql
SELECT *
FROM orders
WHERE purchase_amt > (
    SELECT AVG(purchase_amt)
    FROM orders
    WHERE order_date = '1997-10-04'
);
```

### 2️⃣9️⃣ Average commission of salesmen in London

```sql
SELECT AVG(commission) AS avg_commission
FROM salesmen
WHERE city = 'London';
```

### 3️⃣0️⃣ Orders attributed to salesmen in 'London' — Subquery method

```sql
SELECT *
FROM orders
WHERE salesman_id IN (
    SELECT snum
    FROM salesmen
    WHERE city = 'London'
);
```

### Join method

```sql
SELECT o.*
FROM orders o
JOIN salesmen s ON o.salesman_id = s.snum
WHERE s.city = 'London';
```

### 3️⃣1️⃣ Commission of all salesmen serving customers in 'London'

```sql
SELECT DISTINCT s.sname, s.commission
FROM salesmen s
JOIN customers c ON s.snum = c.salesman_id
WHERE c.city = 'London';
```

### 3️⃣2️⃣ Customers whose cnum is 1000 more than the snum of Sejal

```sql
SELECT *
FROM customers
WHERE cnum = (
    SELECT snum + 1000
    FROM salesmen
    WHERE sname = 'Sejal'
);
```

### 3️⃣3️⃣ Count of customers with rating above the average of 'Surat'

```sql
SELECT COUNT(*) AS count_customers
FROM customers
WHERE rating > (
    SELECT AVG(rating)
    FROM customers
    WHERE city = 'Surat'
);
```

### 3️⃣4️⃣ Salesmen with customers located in their cities (using ANY)

```sql
SELECT *
FROM salesmen
WHERE city = ANY (
    SELECT city
    FROM customers
);
```

### 3️⃣5️⃣ Salesmen for whom there are customers that follow them alphabetically

```sql
SELECT DISTINCT s.*
FROM salesmen s
JOIN customers c ON c.cname > s.sname;
```

### 3️⃣6️⃣ Customers with rating > ANY customer in Rome

```sql
SELECT *
FROM customers
WHERE rating > ANY (
    SELECT rating
    FROM customers
    WHERE city = 'Rome'
);
```

### 3️⃣7️⃣ Orders > at least one order from 6th Oct 1997

```sql
SELECT *
FROM orders
WHERE purchase_amt > ANY (
    SELECT purchase_amt
    FROM orders
    WHERE order_date = '1997-10-06'
);
```

### 3️⃣8️⃣ Orders with amount < ANY amount of London customer

```sql
SELECT *
FROM orders
WHERE purchase_amt < ANY (
    SELECT purchase_amt
    FROM orders o
    JOIN customers c ON o.customer_id = c.cnum
    WHERE c.city = 'London'
);
```

### 3️⃣9️⃣ Customers with rating > EVERY customer in Rome

```sql
SELECT *
FROM customers
WHERE rating > ALL (
    SELECT rating
    FROM customers
    WHERE city = 'Rome'
);
```

### 4️⃣0️⃣ Union of high & low rating customers

```sql
SELECT cname, city, rating, 'HIGH RATING' AS category
FROM customers
WHERE rating >= 200
UNION
SELECT cname, city, rating, 'LOW RATING'
FROM customers
WHERE rating < 200;
```

### 4️⃣1️⃣ Names & numbers of salesmen/customers with > 1 order

```sql
SELECT s.sname, s.snum
FROM salesmen s
JOIN orders o ON s.snum = o.salesman_id
GROUP BY s.sname, s.snum
HAVING COUNT(o.order_no) > 1
UNION
SELECT c.cname, c.cnum
FROM customers c
JOIN orders o ON c.cnum = o.customer_id
GROUP BY c.cname, c.cnum
HAVING COUNT(o.order_no) > 1
ORDER BY 1;
```

### 4️⃣2️⃣ Union of Surat salesmen, Surat customers, & 3rd Oct orders

```sql
SELECT snum
FROM salesmen
WHERE city = 'Surat'
UNION
(SELECT cnum
 FROM customers
 WHERE city = 'Surat'
 UNION ALL
 SELECT order_no
 FROM orders
 WHERE order_date = '1997-10-03');
```

### 4️⃣3️⃣ Remove all orders from customer Chirag

```sql
DELETE FROM orders
WHERE customer_id = (
    SELECT cnum
    FROM customers
    WHERE cname = 'Chirag'
);
```

### 4️⃣4️⃣ Set ratings of all Piyush's customers to 400

```sql
UPDATE customers
SET rating = 400
WHERE salesman_id = (
    SELECT snum
    FROM salesmen
    WHERE sname = 'Piyush'
);
```

### 4️⃣5️⃣ Increase rating of all Rome customers by 100

```sql
UPDATE customers
SET rating = rating + 100
WHERE city = 'Rome';
```
