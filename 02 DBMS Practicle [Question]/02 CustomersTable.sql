/*
-- CNUM : A unique number assigned to each customer.
-- CNAME : The name of the customer.
-- CITY : The location of the customer.
-- RATING : A level of preference indicator given to this customer.
-- SNUM : The number of salesman assigned to this customer.
 */
--
CREATE TABLE
    Customers (
        CNUM INT PRIMARY KEY,
        CNAME VARCHAR(50),
        CITY VARCHAR(50),
        RATING INT,
        SNUM INT,
        FOREIGN KEY (SNUM) REFERENCES Salesmen (SNUM)
    );

INSERT INTO
    Customers
VALUES
    (2001, 'Harsh', 'London', 100, 1001),
    (2002, 'Gita', 'Rome', 200, 1003),
    (2003, 'Lalit', 'Surat', 200, 1002),
    (2004, 'Govind', 'Bombay', 300, 1002),
    (2006, 'Chirag', 'London', 100, 1001),
    (2008, 'Chinmay', 'Surat', 300, 1007),
    (2007, 'Pratik', 'Rome', 100, 1004);

SELECT
    *
FROM
    customers;