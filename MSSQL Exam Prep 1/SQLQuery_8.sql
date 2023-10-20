CREATE FUNCTION udf_CreatorWithBoardgames(@name NVARCHAR(30))
RETURNS INT
AS 
BEGIN
    DECLARE @count INT = 
    (SELECT COUNT(cb.BoardgameId)
    FROM Creators AS c 
    JOIN CreatorsBoardgames as cb ON c.Id = cb.CreatorId
    WHERE c.FirstName = @name)

    RETURN @count
END