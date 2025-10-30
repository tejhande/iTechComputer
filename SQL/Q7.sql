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
