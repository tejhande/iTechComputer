-- 3) Create sql query for drop , delete and truncate 

-- DROP Table
DROP TABLE project_details;

-- DELETE (removes data but keeps structure)
DELETE FROM student WHERE Roll = 1;

-- TRUNCATE (removes all data, resets identity)
TRUNCATE TABLE student;
