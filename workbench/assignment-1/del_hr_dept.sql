DELIMITER //

CREATE PROCEDURE del_Hr_dept_emp()
BEGIN
	DELETE FROM employees 
    WHERE department = 'HR';
END //
DELIMITER ;

call del_Hr_dept_emp()