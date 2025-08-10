-- D. orders
CREATE TABLE
    orders (
        orderNumber INT PRIMARY KEY AUTO_INCREMENT,
        customerNumber INT,
        orderDate DATE,
        shippedDate DATE,
        FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber)
    );

INSERT INTO
    orders (customerNumber, orderDate, shippedDate)
VALUES
    (1, '2025-08-01', '2025-08-03'),
    (2, '2025-08-02', NULL),
    (3, '2025-08-05', '2025-08-07'),
    (4, '2025-08-06', NULL);

-- GET All information from Orders Table
SELECT
    *
FROM
    Orders;