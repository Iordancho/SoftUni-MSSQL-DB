SELECT c.LastName, CEILING(AVG(b.Rating)) AS AverageRating, p.Name AS PublisherName
FROM Creators AS c 
JOIN CreatorsBoardgames AS cb ON c.Id = cb.CreatorId
JOIN Boardgames AS b ON b.Id = cb.BoardgameId
JOIN Publishers AS p ON b.PublisherId = p.Id
GROUP BY c.LastName, p.Name
HAVING p.Name = 'Stonemaier Games'
ORDER BY AVG(b.Rating) DESC