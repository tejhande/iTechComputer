-- 2) Perform max, min, avg, count, sum, group by, having, like
USE college_db;

SELECT MAX(Amount) AS Max_Amount FROM student;
SELECT MIN(Amount) AS Min_Amount FROM student;
SELECT AVG(Amount) AS Avg_Amount FROM student;
SELECT COUNT(*) AS Total_Students FROM student;
SELECT SUM(Amount) AS Total_Amount FROM student;

-- GROUP BY and HAVING
SELECT Gender, SUM(Amount) AS Total
FROM student
GROUP BY Gender
HAVING SUM(Amount) > 5000;

-- LIKE
SELECT * FROM student WHERE Name LIKE 'A%';
