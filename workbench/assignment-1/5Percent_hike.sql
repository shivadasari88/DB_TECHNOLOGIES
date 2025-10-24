DELIMITER //

CREATE PROCEDURE IncreaseAllSalariesByFivePercent()
BEGIN
	UPDATE employees
    SET salary =  salary * 1.05;

END //

DELIMITER ; 

CALL IncreaseAllSalariesByFivePercent()
