CREATE DATABASE Relation;

USE Relation;

CREATE TABLE
   Person (PersonID INT PRIMARY KEY, Name VARCHAR(100));

CREATE TABLE
   AadharCard (
      AadharCardID INT PRIMARY KEY,
      PersonID INT UNIQUE,
      IssueDate DATE,
      FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
   );

SELECT * FROM Person;
SELECT * FROM AadharCard;

-- Inserting sample data
INSERT INTO
   Person (PersonID, Name)
VALUES
   (1, 'John Doe');

INSERT INTO
   AadharCard (AadharCardID, PersonID, IssueDate)
VALUES
   (1001, 1, '2022-01-01');

-- Query to retrieve data
SELECT
   p.Name,
   a.AadharCardID,
   a.IssueDate
FROM
   Person p
   JOIN AadharCard a ON p.PersonID = a.PersonID;