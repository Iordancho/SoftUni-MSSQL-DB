CREATE PROC usp_SearchByCategory(@category NVARCHAR(50))
AS
    DECLARE @categoryID INT = (
        SELECT Id
        FROM Categories
        WHERE [Name] = @category
    )
    
    SELECT b.Name, b.YearPublished, b.Rating, c.Name, p.Name, 
    CONCAT_WS(' ', pr.PlayersMin, 'people') PlayersMin,
    CONCAT_WS(' ', pr.PlayersMax, 'people') PlayersMax
    FROM Boardgames AS b 
    JOIN Categories AS c ON b.CategoryId = c.Id
    JOIN Publishers AS p ON b.PublisherId = p.Id
    JOIN PlayersRanges as pr ON b.PlayersRangeId = pr.Id
    WHERE c.Id = @categoryID
    ORDER BY p.Name ASC, b.YearPublished DESC


