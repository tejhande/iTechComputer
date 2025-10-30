-- 9) Perform Nested Query (sub query) 

SELECT Name, Amount
FROM student
WHERE Amount > (SELECT AVG(Amount) FROM student);
