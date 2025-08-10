CREATE DATABASE DBMS_DB;

USE DBMS_DB;

/*
## Tables You Need
-- Table Name :	Purpose
-- Salesmen  : Stores Salesmen details like SNUM, SNAME, CITY, COMMISSION,
-- Customers : Stores Customers info like CNAME, CITY, RATING, SUM.
-- Orders    : Stores Orders details like ONUM, AMOUNT, ODATE, CNUM, SNUM.
 */
--
/*
-- SNUM : A unique number assigned to each salesman.
-- SNAME : The name of the salesman.
-- CITY : The location of salesmen.
-- COMMISSION: The Salemen's commission on orders
 */
--
CREATE TABLE
    Salesmen (
        SNUM INT PRIMARY KEY,
        SNAME VARCHAR(50),
        CITY VARCHAR(50),
        COMMISSION DECIMAL(10, 2) -- Storing as a percentage (e.g. 12% as 12.00)
    );

INSERT INTO
    Salesmen
VALUES
    (1001, 'Piyush', 'London', 12.00),
    (1002, 'Sejal', 'Surat', 13.00),
    (1004, 'Miti', 'London', 11.00),
    (1007, 'Rajesh', 'Baroda', 15.00),
    (1003, 'Anand', 'New Delhi', 10.00);

SELECT
    *
FROM
    salesmen;