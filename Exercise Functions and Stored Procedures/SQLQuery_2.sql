CREATE PROC usp_GetEmployeesSalaryAboveNumber 
@GivenSalary DECIMAL(18, 4)
    AS
    SELECT FirstName, LastName
    FROM Employees
    WHERE Salary >= @GivenSalary

EXEC usp_GetEmployeesSalaryAboveNumber 48100 