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
