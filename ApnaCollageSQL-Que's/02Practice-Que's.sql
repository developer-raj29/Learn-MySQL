CREATE DATABASE COLLAGE;

USE COLLAGE;

CREATE TABLE
    STUDENT (
        RollNo INT PRIMARY KEY,
        Name VARCHAR(50),
        Marks INT NOT NULL,
        Grads VARCHAR(1),
        City VARCHAR(20)
    );

INSERT INTO
    STUDENT (RollNo, Name, Marks, Grads, City) VALUE (101, "Anil", 78, "C", "Pune"),
    (102, "Bhumika", 93, "A", "Mumbai"),
    (103, "Chetan", 85, "B", "Mumbai"),
    (104, "Dhruv", 96, "A", "Delhi"),
    (105, "Farah", 82, "B", "Delhi"),
    (106, "Emanuel", 12, "F", "Delhi");

SELECT
    Name,
    Marks
FROM
    STUDENT;

SELECT
    *
FROM
    STUDENT;

SELECT DISTINCT
    City
FROM
    STUDENT;