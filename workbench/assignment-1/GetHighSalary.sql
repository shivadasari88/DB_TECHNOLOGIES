DELIMITER //

CREATE PROCEDURE GetHighSalary(OUT p_max_salary DECIMAL(10,2))
BEGIN
	SELECT MAX(salary) INTO p_max_salary
    FROM employees;
END //
DELIMITER ;

CALL GetHighSalary(@highest_salary);

SELECT @highest_salary AS Highest_Salary;