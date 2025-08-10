CREATE DATABASE IF NOT EXISTS relation;
USE relation;

CREATE TABLE IF NOT EXISTS Student (
   StudentID INT PRIMARY KEY, 
   Name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Course (
   CourseID INT PRIMARY KEY, 
   CourseName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Enrollment (
   StudentID INT,
   CourseID INT,
   EnrollmentDate DATE,
   PRIMARY KEY (StudentID, CourseID),
   FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
   FOREIGN KEY (CourseID) REFERENCES Course (CourseID)
);

INSERT INTO Student (StudentID, Name) VALUES (1, 'Bob');

INSERT INTO Student (StudentID, Name) VALUES (2, 'Charlie');

INSERT INTO Course (CourseID, CourseName) VALUES (101, 'Math');

INSERT INTO Course (CourseID, CourseName) VALUES (102, 'Science');

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) 
VALUES 
  (1, 101, '2022-01-10'), 
  (1, 102, '2022-01-12'),
  (2, 101, '2022-01-15');

-- Query to retrieve data
SELECT
   s.Name AS StudentName,
   c.CourseName,
   e.EnrollmentDate
FROM
   Enrollment e
   JOIN Student s ON e.StudentID = s.StudentID
   JOIN Course c ON e.CourseID = c.CourseID;
   
DROP TABLE relation;