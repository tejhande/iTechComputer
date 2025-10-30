-- 6) Create query to select 3 top records. 

SELECT * FROM student ORDER BY Amount DESC LIMIT 3; 
-- (Use TOP 3 for SQL Server)
-- SELECT TOP 3 * FROM student ORDER BY Amount DESC;