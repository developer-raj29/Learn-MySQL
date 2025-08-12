-- E. orderdetails
CREATE TABLE
    orderdetails (
        orderNumber INT,
        productCode INT,
        quantityOrdered INT,
        priceEach DECIMAL(10, 2),
        PRIMARY KEY (orderNumber, productCode),
        FOREIGN KEY (orderNumber) REFERENCES orders (orderNumber),
        FOREIGN KEY (productCode) REFERENCES products (productCode)
    );

INSERT INTO
    orderdetails (
        orderNumber,
        productCode,
        quantityOrdered,
        priceEach
    )
VALUES
    (1, 1, 2, 1200),
    (1, 4, 1, 50),
    (2, 2, 1, 800),
    (3, 5, 3, 150),
    (4, 3, 2, 600),
    (4, 6, 1, 90);

DROP TABLE orderDetails;

-- GET All information from OrderDetails Table
SELECT
    *
FROM
    OrderDetails;