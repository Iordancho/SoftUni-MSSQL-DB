CREATE FUNCTION udf_ProductWithClients(@name NVARCHAR(50))
RETURNS INT
AS 
BEGIN
    DECLARE @result INT = (
        SELECT COUNT(pc.ClientId)
        FROM Products as p 
        JOIN ProductsClients as pc ON p.Id = pc.ProductId
        WHERE p.Name = @name
    )
    RETURN @result
END

SELECT dbo.udf_ProductWithClients('DAF FILTER HU12103X')
