DELIMITER //

CREATE PROCEDURE GetAvgSalary(OUT p_avg_salary DECIMAL(10,2))
BEGIN
	SELECT AVG(salary) INTO p_avg_salary
    FROM employees;
END //
DELIMITER ;

CALL GetAvgSalary(@avg_salary);

SELECT @avg_salary AS Average_Salary;