DELIMITER //

CREATE PROCEDURE DeleteEmployee(
	IN p_emp_name VARCHAR(50))
    
    BEGIN
		DELETE FROM employees 
        WHERE name = p_emp_name ;
    END //
    
DELIMITER ; 

CALL DeleteEmployee('jane');