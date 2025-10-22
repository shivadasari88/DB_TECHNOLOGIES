
DELIMITER //
CREATE PROCEDURE reset_salar()
BEGIN
set sql_safe_updates=0;

UPDATE employees 
SET salary = 50000;
select *from employees;
END //

DELIMITER ;

CALL reset_salar();

