DELIMITER //

CREATE PROCEDURE IncreaseSalByPercent(
	IN p_val int
    )
BEGIN
	UPDATE employees 
    SET salary = salary * (1 + p_percentage / 100.0);
END //

DELIMITER ;

CALL IncreaseSalByPercentage(5);
select * from employees;