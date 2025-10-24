DELIMITER //

CREATE PROCEDURE ApplyBonusAndGetNewSalaryById (
    IN p_employee_id INT,
    -- p_bonus_and_new_salary starts with the bonus value (IN) 
    -- and returns the new salary (OUT)
    INOUT p_bonus_and_new_salary DECIMAL(10, 2) 
)
BEGIN
    DECLARE v_new_salary DECIMAL(10, 2);
    DECLARE v_current_salary DECIMAL(10, 2);
    DECLARE v_bonus_amount DECIMAL(10, 2);

    -- 1. Store the IN value (the bonus) into a local variable
    SET v_bonus_amount = p_bonus_and_new_salary;

    -- 2. Get the current salary of the employee
    SELECT salary INTO v_current_salary
    FROM employees
    WHERE emp_id = p_employee_id;

    -- 3. Calculate the new salary
    SET v_new_salary = v_current_salary + v_bonus_amount;

    -- 4. Start a transaction and update the employee's record
    START TRANSACTION;
    
    UPDATE employees
    SET salary = v_new_salary
    WHERE emp_id = p_employee_id;
    
    COMMIT;

    -- 5. Set the INOUT parameter to the updated salary value (OUT)
    SET p_bonus_and_new_salary = v_new_salary;

END //

DELIMITER ;

SET @bonus_amount = 5000.00; -- The bonus to add

-- Example: Apply a $5000 bonus to employee ID 101
CALL ApplyBonusAndGetNewSalaryById(2, @bonus_amount);

SELECT 
    @bonus_amount AS New_Employee_Salary,
    5000.00 AS Applied_Bonus;