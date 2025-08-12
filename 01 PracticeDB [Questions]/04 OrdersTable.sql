-- D. orders
CREATE TABLE
    orders (
        orderNumber INT PRIMARY KEY AUTO_INCREMENT,
        customerNumber INT,
        customerName VARCHAR(100),
        orderDate DATE,
        shippedDate DATE,
        FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber),
        FOREIGN KEY (customerName) REFERENCES customers (customerName)
    );


DROP TABLE orders;
TRUNCATE TABLE orders;

INSERT INTO
    orders (customerNumber,customerName, orderDate, shippedDate)
VALUES
    (1, "Raj Yadav", '2025-08-01', '2025-08-03'),
    (2, "Sakshi Verma",'2025-08-02', NULL),
    (3, "Amit Sharma", '2025-08-05', '2025-08-07'),
    (4, "Priya Singh" ,'2025-08-06', NULL);

-- GET All information from Orders Table
SELECT
    *
FROM
    Orders;