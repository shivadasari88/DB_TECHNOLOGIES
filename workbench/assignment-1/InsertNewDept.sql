DELIMITER //

CREATE PROCEDURE Insert_dept(
	IN p_dept VARCHAR(50))
    
    BEGIN
		INSERT INTO employees(department)
        VALUES(
			p_dept
        );
    END //
    
DELIMITER ; 

CALL Insert_dept('HR');
