-- B. products
CREATE TABLE
    products (
        productCode INT PRIMARY KEY AUTO_INCREMENT,
        productName VARCHAR(100),
        productLine VARCHAR(50),
        buyPrice DECIMAL(10, 2),
        quantityInStock INT
    );

INSERT INTO
    products (
        productName,
        productLine,
        buyPrice,
        quantityInStock
    )
VALUES
    ('Laptop', 'Electronics', 1200, 10),
    ('Tablet', 'Electronics', 800, 5),
    ('Smartphone', 'Electronics', 600, 0),
    ('Headphones', 'Accessories', 50, 20),
    ('Camera', 'Electronics', 150, 8),
    ('Chair', 'Furniture', 90, 0),
    ('Desk', 'Furniture', 200, 12);

-- GET All information from Products Table
SELECT
    *
FROM
    Products;