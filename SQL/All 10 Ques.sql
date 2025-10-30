-- 1) Create one Database and create Two Table (student, project_details) First Table column name Roll, Name, Gender, and Amount. Second Table column name sr_code, Company_name, Project, country and insert 10 rows data roll as primary key, sr_code as foreign key.

-- 1. Create Database
CREATE DATABASE college_db;
USE college_db;

-- 2. Create Table: student
CREATE TABLE student (
    Roll INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender CHAR(1),
    Amount DECIMAL(10,2)
);

-- 3. Create Table: project_details
CREATE TABLE project_details (
    sr_code INT,
    Company_name VARCHAR(50),
    Project VARCHAR(50),
    Country VARCHAR(50),
    FOREIGN KEY (sr_code) REFERENCES student(Roll)
);

-- 4. Insert 10 rows
INSERT INTO student VALUES
(1, 'Ravi', 'M', 1000),
(2, 'Priya', 'F', 2000),
(3, 'Amit', 'M', 1500),
(4, 'Neha', 'F', 2200),
(5, 'Raj', 'M', 1800),
(6, 'Simran', 'F', 2500),
(7, 'Vikas', 'M', 3000),
(8, 'Anjali', 'F', 1700),
(9, 'Arjun', 'M', 2800),
(10, 'Pooja', 'F', 2600);

INSERT INTO project_details VALUES
(1, 'TCS', 'AI System', 'India'),
(2, 'Infosys', 'Banking App', 'USA'),
(3, 'Wipro', 'E-Commerce', 'UK'),
(4, 'IBM', 'Cloud Project', 'Canada'),
(5, 'TechMahindra', 'ChatBot', 'India'),
(6, 'Google', 'Search Engine', 'USA'),
(7, 'Amazon', 'AWS', 'Germany'),
(8, 'Meta', 'VR Project', 'France'),
(9, 'Apple', 'iOS App', 'USA'),
(10, 'Microsoft', 'Azure', 'India');




-- 2) Perform max, min, avg, count, sum, group by, having, like

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


-- 3) Create sql query for drop , delete and truncate 

-- DROP Table
DROP TABLE project_details;

-- DELETE (removes data but keeps structure)
DELETE FROM student WHERE Roll = 1;

-- TRUNCATE (removes all data, resets identity)
TRUNCATE TABLE student;




-- 4) Create Sql Query for 5 date function. 

SELECT NOW() AS CurrentDateTime;           -- Current date and time
SELECT CURDATE() AS TodayDate;             -- Current date
SELECT DATE_ADD(CURDATE(), INTERVAL 10 DAY) AS Add10Days;  
SELECT DATEDIFF('2025-12-31', CURDATE()) AS DaysLeft; 
SELECT YEAR(CURDATE()) AS CurrentYear;


-- 5) Perform inner join , left join and right join on the above two table. 

-- INNER JOIN
SELECT s.Roll, s.Name, p.Project
FROM student s
INNER JOIN project_details p
ON s.Roll = p.sr_code;

-- LEFT JOIN
SELECT s.Roll, s.Name, p.Company_name
FROM student s
LEFT JOIN project_details p
ON s.Roll = p.sr_code;

-- RIGHT JOIN
SELECT s.Roll, s.Name, p.Company_name
FROM student s
RIGHT JOIN project_details p
ON s.Roll = p.sr_code;




-- 6) Create query to select 3 top records. 

SELECT * FROM student ORDER BY Amount DESC LIMIT 3; 
-- (Use TOP 3 for SQL Server)
-- SELECT TOP 3 * FROM student ORDER BY Amount DESC;


-- 7) Create stored procedure for insert data in a table 


DELIMITER //
CREATE PROCEDURE InsertStudent(IN p_Roll INT, IN p_Name VARCHAR(50), IN p_Gender CHAR(1), IN p_Amount DECIMAL(10,2))
BEGIN
    INSERT INTO student (Roll, Name, Gender, Amount)
    VALUES (p_Roll, p_Name, p_Gender, p_Amount);
END //
DELIMITER ;

-- Call it
CALL InsertStudent(11, 'Karan', 'M', 2700);



-- 8) Create any user define function in sql 


DELIMITER //
CREATE FUNCTION GetGenderCount(g CHAR(1))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cnt INT;
    SELECT COUNT(*) INTO cnt FROM student WHERE Gender = g;
    RETURN cnt;
END //
DELIMITER ;

-- Call it
SELECT GetGenderCount('F') AS Female_Count;




-- 9) Perform Nested Query (sub query) 

SELECT Name, Amount
FROM student
WHERE Amount > (SELECT AVG(Amount) FROM student);



-- 10) Create query for 10 string function


SELECT UPPER(Name) AS UpperName FROM student;
SELECT LOWER(Name) AS LowerName FROM student;
SELECT LENGTH(Name) AS NameLength FROM student;
SELECT CONCAT(Name, '_', Gender) AS FullInfo FROM student;
SELECT SUBSTRING(Name,1,3) AS ShortName FROM student;
SELECT REPLACE(Name, 'a', '@') AS Replaced FROM student;
SELECT REVERSE(Name) AS Reversed FROM student;
SELECT LEFT(Name,2) AS LeftPart FROM student;
SELECT RIGHT(Name,2) AS RightPart FROM student;
SELECT TRIM('   SQL   ') AS Trimmed;


