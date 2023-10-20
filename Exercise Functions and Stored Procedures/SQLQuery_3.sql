CREATE PROC usp_GetTownsStartingWith
@StartingString NVARCHAR(50)
    AS
        SELECT [Name]
        FROM Towns
        WHERE [Name] LIKE @StartingString + '%'

EXEC usp_GetTownsStartingWith 'b'