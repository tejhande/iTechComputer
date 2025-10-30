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
