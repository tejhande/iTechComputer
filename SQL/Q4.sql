-- 4) Create Sql Query for 5 date function. 

SELECT NOW() AS CurrentDateTime;           -- Current date and time
SELECT CURDATE() AS TodayDate;             -- Current date
SELECT DATE_ADD(CURDATE(), INTERVAL 10 DAY) AS Add10Days;  
SELECT DATEDIFF('2025-12-31', CURDATE()) AS DaysLeft; 
SELECT YEAR(CURDATE()) AS CurrentYear;
