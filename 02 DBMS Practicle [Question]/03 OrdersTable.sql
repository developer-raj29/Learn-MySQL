/*
-- ONUM : A unique number assigned to each order.
-- AMOUNT : The amount of an order.
-- ODATE : The date of an order.
-- CNUM : The number of customer making the order.
-- SNUM : The number of salesman credited with the sale
 */
--
CREATE TABLE
    Orders (
        ONUM INT PRIMARY KEY,
        AMOUNT DECIMAL(10, 2),
        ODATE DATE,
        CNUM INT,
        SNUM INT,
        FOREIGN KEY (CNUM) REFERENCES Customers (CNUM),
        FOREIGN KEY (SNUM) REFERENCES Salesmen (SNUM)
    );

INSERT INTO
    Orders
VALUES
    (3001, 18.69, '1997-03-10', 2008, 1007),
    (3003, 767.19, '1997-03-10', 2001, 1001),
    (3002, 1900.10, '1997-03-10', 2007, 1004),
    (3005, 5160.45, '1997-03-10', 2003, 1002),
    (3006, 1098.16, '1997-03-10', 2008, 1007),
    (3009, 1713.23, '1997-04-10', 2002, 1003),
    (3007, 75.75, '1997-04-10', 2004, 1002),
    (3008, 4723.00, '1997-05-10', 2006, 1001),
    (3010, 1309.95, '1997-06-10', 2004, 1002),
    (3011, 9891.88, '1997-06-10', 2006, 1001);

SELECT
    *
FROM
    orders;