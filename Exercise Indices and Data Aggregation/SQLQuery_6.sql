CREATE PROC usp_EmployeesBySalaryLeve
@LevelOfSalary VARCHAR(20)
    AS
    SELECT FirstName, LastName
    FROM Employees
    WHERE dbo.ufn_GetSalaryLevel(Salary) = @LevelOfSalary