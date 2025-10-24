DELIMITER //

CREATE PROCEDURE InsertNewEmployee(
	IN p_employee_name VARCHAR(100),
    IN p_department_name VARCHAR(50),
    IN p_employee_salary DECIMAL(10,2) )
BEGIN
	INSERT INTO employees(
    name, 
    department,
    salary
    )
    VALUES (
		p_employee_name,
        p_department_name,
        p_employee_salary
        );
END //

DELIMITER ; 

CALL InsertNewEmployee('Jane Doe', 'Marketing', 65000.00);