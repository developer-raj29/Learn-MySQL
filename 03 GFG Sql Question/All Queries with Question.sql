-- 1. Write a SQL query to fetch "FIRST_NAME" from the Student table in upper case and use ALIAS name as STUDENT_NAME.
SELECT UPPER(FIRST_NAME) AS STUDENT_NAME
FROM Students;

-- 2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.
SELECT DISTINCT MAJOR FROM Students;
SELECT MAJOR FROM Students Group By (MAJOR);

-- 3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Students;

-- 4. Write a SQL query to find the position of alphabet ('a') int the first name column 'Shivansh' from Student table.
SELECT INSTR(LOWER(FIRST_NAME), 'a') FROM Students WHERE FIRST_NAME = "Shivansh";

-- 5. Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.
SELECT MAJOR, LENGTH(MAJOR) FROM Students ORDER BY MAJOR ASC;

-- 6. Write a SQL query to print FIRST_NAME from the Student table after replacing 'a' with 'A'.
SELECT REPLACE(FIRST_NAME, 'a', 'A') FROM Students;

-- 7. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME 
FROM Students ORDER BY COMPLETE_NAME ASC;

-- 8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .
SELECT * FROM Students ORDER BY FIRST_NAME ASC, MAJOR DESC;

-- 9. Write a SQL query to print details of the Students with the FIRST_NAME as 'Prem' and 'Shivansh' from Student table.
SELECT * FROM Students WHERE FIRST_NAME IN ('Prem', 'Shivansh');

-- 10. Write a SQL query to print details of the Students excluding FIRST_NAME as 'Prem' and 'Shivansh' from Student table.
SELECT * FROM Students WHERE FIRST_NAME NOT IN ('Prem', 'Shivansh');

-- 11. Write a SQL query to print details of the Students whose FIRST_NAME ends with 'a'.
SELECT * FROM Students WHERE FIRST_NAME LIKE '%a';

-- 12. Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains five alphabets.
SELECT * FROM Students WHERE FIRST_NAME LIKE '____a';

-- 13. Write an SQL query to print details of the Students whose GPA lies between 9.00 and 9.99.
SELECT * FROM Students WHERE GPA BETWEEN 9.00 AND 9.99;

-- 14. Write an SQL query to fetch the count of Students having Major Subject ‘Computer Science’.
SELECT MAJOR, COUNT(*) AS TotalCount FROM Students WHERE MAJOR = "Computer Science";

-- 15. Write an SQL query to fetch Students full names with GPA >= 8.5 and <= 9.5.
SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS FULL_NAME, GPA FROM Students 
WHERE GPA BETWEEN 8.5 AND 9.5;

-- 16. Write an SQL query to fetch the no. of Students for each MAJOR subject in the descending order.
SELECT MAJOR, COUNT(MAJOR) FROM Students GROUP BY MAJOR ORDER BY COUNT(MAJOR) DESC;
 
-- 17. Display the details of students who have received scholarships, including their names, scholarship amounts, and scholarship dates.
SELECT Students.FIRST_NAME, Students.LAST_NAME, Scholarships.SCHOLARSHIP_AMOUNT, Scholarships.SCHOLARSHIP_DATE
FROM Students 
INNER JOIN 
Scholarships
ON Students.STUDENT_ID = Scholarships.STUDENT_REF_ID;

-- 18. Write an SQL query to show only odd rows from Student table.
SELECT * FROM Students WHERE STUDENT_ID % 2 != 0;

-- 19. Write an SQL query to show only even rows from Student table
SELECT * FROM Students WHERE STUDENT_ID % 2 = 0;

/* 20. List all students and their scholarship amounts if they have received any. 
If a student has not received a scholarship, display NULL for the scholarship details. */
SELECT Students.FIRST_NAME,	Students.LAST_NAME,	Scholarships.SCHOLARSHIP_AMOUNT, Scholarships.SCHOLARSHIP_DATE
FROM Students
LEFT JOIN Scholarships
ON Students.STUDENT_ID = Scholarships.STUDENT_REF_ID;

-- 21. Write an SQL query to show the top n (say 5) records of Student table order by descending GPA.
SELECT * FROM Students ORDER BY GPA DESC LIMIT 5;

-- 22. Write an SQL query to determine the nth (say n=5) highest GPA from a table.
SELECT * FROM Students ORDER BY GPA DESC LIMIT 5, 1;

-- 23. Write an SQL query to determine the 5th highest GPA without using LIMIT keyword.
SELECT * FROM Students s1 
WHERE 4 = (
    SELECT COUNT(DISTINCT (s2.GPA)) 
    FROM Students s2
    WHERE s2.GPA >= s1.GPA
);



SELECT * FROM Students;
SELECT * FROM Scholarships;





















