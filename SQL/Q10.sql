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