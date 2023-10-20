CREATE PROC usp_GetEmployeesFromTown
@TownName NVARCHAR(50)
    AS
        SELECT e.FirstName, e.LastName
        FROM Employees AS e 
        JOIN Addresses AS a ON e.AddressID = a.AddressID
        JOIN Towns as t ON t.TownID = a.TownID
        WHERE t.Name = @TownName

EXEC usp_GetEmployeesFromTown 'Sofia'
