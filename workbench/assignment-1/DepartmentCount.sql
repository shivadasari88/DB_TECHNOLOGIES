DELIMITER //

CREATE PROCEDURE DeptCount(OUT departmentCount DECIMAL(10,2))

BEGIN
	SELECT COUNT(department) INTO departmentCount
    FROM employees;
END //

DELIMITER ; 

CALL DeptCount(@deptCount);

SELECT @deptCount as deptCount;
