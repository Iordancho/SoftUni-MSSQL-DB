SELECT p.Id, p.Name, p.Price, c.Name
FROM Products as p 
JOIN Categories as c ON p.CategoryId = c.Id
WHERE c.Name IN('ADR', 'Others')
ORDER BY Price DESC