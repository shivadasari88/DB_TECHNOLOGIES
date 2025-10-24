DELIMITER //

CREATE PROCEDURE ChangeEmployeeDep(
	 IN p_employee_id INT,
     IN p_new_department VARCHAR(50)
     )
     
     BEGIN
			UPDATE employees
            SET 	
				department = p_new_department
			WHERE
				emp_id = p_employee_id;
                
	END //
DELIMITER ;

CALL ChangeEmployeeDept(4, 'Marketing');