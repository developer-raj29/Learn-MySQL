-- create database syntax
CREATE DATABASE COLLAGE;

-- select DB syntax
USE COLLAGE;

-- create table Syntax
CREATE TABLE
    STUDENT (
        ID INT PRIMARY KEY,
        NAME VARCHAR(50),
        AGE INT NOT NULL
    );

-- add data in table syntax
INSERT INTO
    STUDENT
VALUES
    (1, "RAJ YADAV", 22);

INSERT INTO
    STUDENT
VALUES
    (2, "YASHRAJ YADAV", 24);

-- PRINT ALL DATA IN TABLE
SELECT
    *
FROM
    STUDENT;

SHOW DATABASES;

SHOW TABLES;

CREATE DATABASE COLLAGE2;

USE COLLAGE2;

CREATE TABLE
    STUDENT (
        Roll_No INT PRIMARY KEY,
        Name VARCHAR(50),
        Marks INT NOT NULL,
        Grads VARCHAR(1),
        City VARCHAR(20)
    );

INSERT INTO
    STUDENT (Roll_No, Name, Marks, Grads, City) VALUE (101, "Anil", 78, "C", "Pune"),
    (102, "Bhumika", 93, "A", "Mumbai"),
    (103, "Chetan", 85, "", "Mumbai"),
    (104, "Dhruv", 96, "A", "Delhi"),
    (105, "Farah", 82, "B", "Delhi"),
    (106, "Emanuel", 12, "F", "Delhi");

UPDATE STUDENT
SET
    Name = "Chetan",
    Marks = 80,
    Grads = "B",
    City = "Mumbai"
WHERE
    Roll_No = 103;

DROP TABLE STUDENT;

SELECT
    *
FROM
    STUDENT;