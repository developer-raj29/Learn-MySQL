-- C. customers
CREATE TABLE
    customers (
        customerNumber INT PRIMARY KEY AUTO_INCREMENT,
        customerName VARCHAR(100) NOT NULL UNIQUE,
        city VARCHAR(50)
);

DROP TABLE customers;

INSERT INTO
    customers (customerName, city)
VALUES
    ('Raj Yadav', 'Indore'),
    ('Sakshi Verma', 'Bhopal'),
    ('Amit Sharma', 'Delhi'),
    ('Priya Singh', 'Pune');

-- GET All information from Customer Table
SELECT
    *
FROM
    Customers;