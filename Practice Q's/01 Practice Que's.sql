-- Create a Database for your company named XYZ.
-- Step 1 : Create a table inside this DB to store employee info(_id, name, and salary);
-- Step 2 : Add following information in the DB;
--        1, "adam", 25000
--        2, "bob", 30000
--        3 , "casey", 40000 
-- Step 3 : Select & View All Your Table Data;
-- Create a Database for your company named XYZ
CREATE DATABASE XYZ;

-- Select database which we use;
USE XYZ;

-- Step 1 : Create a table inside this DB to store employee info(_id, name, and salary);
CREATE TABLE
    EMPLOYEE_INFO (ID INT PRIMARY KEY, NAME VARCHAR(50), SALARY INT);

-- Step 2 : Add following information in the DB
INSERT INTO
    EMPLOYEE_INFO (ID, NAME, SALARY)
VALUES
    (1, "Adam", 25000),
    (2, "Bob", 30000),
    (3, "Casey", 40000);

-- Step 3 : Select & View All Your Table Data;
SELECT
    *
FROM
    EMPLOYEE_INFO;