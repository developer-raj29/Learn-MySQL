CREATE DATABASE IF NOT EXISTS Relation;
USE Relation;

CREATE TABLE IF NOT EXISTS
   Customer (CustomerID INT PRIMARY KEY, Name VARCHAR(100));

CREATE TABLE IF NOT EXISTS
   Orders (
      OrderID INT PRIMARY KEY,
      OrderDate DATE,
      CustomerID INT,
      FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
   );

INSERT INTO
   Customer (CustomerID, Name)
VALUES
   (1, 'Alice');

INSERT INTO
   Orders (OrderID, OrderDate, CustomerID)
VALUES
   (101, '2022-01-10', 1);

INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (102, '2022-01-15', 1);

-- Query to retrieve data
SELECT
   c.Name,
   o.OrderID,
   o.OrderDate
FROM
   Customer c
   JOIN Orders o ON c.CustomerID = o.CustomerID;