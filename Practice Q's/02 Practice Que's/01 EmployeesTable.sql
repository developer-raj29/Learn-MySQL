-- Create Database
CREATE DATABASE PracticeDB;

-- Switch to it
USE PracticeDB;

/*
## Tables You Need
-- Table Name :	Purpose
-- employees  :	Stores employee details like name, department, salary.
-- products   :	Stores product info like name, category, price, stock.
-- customers  :	Stores customer details like name, contact info.
-- orders	  : Stores order info with customer and product references.
-- orderdetails : Links orders to products with quantity & price (for DISTINCT queries).
 */
--
/*
-- Table Structure + Sample Data
-- A. employees 
 */
CREATE TABLE
    Employees (
        empID INT PRIMARY KEY AUTO_INCREMENT,
        firstName VARCHAR(50),
        lastName VARCHAR(50),
        department VARCHAR(50),
        salary DECIMAL(10, 2)
    );

INSERT INTO
    Employees (firstName, lastName, department, salary)
VALUES
    ('John', 'Smith', 'Sales', 50000),
    ('Jane', 'Johnson', 'Marketing', 32000),
    ('Michael', 'Brown', 'IT', 75000),
    ('Jessica', 'Wilson', 'Sales', 28000),
    ('Jack', 'Anderson', 'Finance', 90000),
    ('Jason', 'Thompson', 'IT', 0),
    ('James', 'Jackson', 'Marketing', 45000);

-- GET All information from Employees Table
SELECT
    *
FROM
    Employees;