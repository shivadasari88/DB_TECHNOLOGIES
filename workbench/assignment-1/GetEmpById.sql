DELIMITER //

CREATE PROCEDURE GetEmpById_Fixed(
    -- Changed parameter type from DECIMAL to INT
    IN p_emp_id INT, 
    OUT p_emp_name VARCHAR(50)
)
BEGIN
    -- Use SELECT INTO to fetch the name
    SELECT name INTO p_emp_name
    FROM employees 
    WHERE emp_id = p_emp_id;
END //

DELIMITER ;

-- How to execute the corrected procedure
CALL GetEmpById_Fixed(2, @employee_name);
SELECT @employee_name AS Employee_Name;