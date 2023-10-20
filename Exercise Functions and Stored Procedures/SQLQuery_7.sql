CREATE PROC usp_EmployeesBySalaryLevel
@LevelOfSalary VARCHAR(20)
    AS
    SELECT FirstName, LastName
    FROM Employees
    WHERE dbo.ufn_GetSalaryLevel(Salary) = @LevelOfSalary

EXEC usp_EmployeesBySalaryLeve 'Low'