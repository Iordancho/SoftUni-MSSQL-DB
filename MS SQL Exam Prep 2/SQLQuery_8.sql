SELECT c.Name [Client], MAX(p.Price), c.NumberVAT
FROM Clients as c 
JOIN ProductsClients as pc ON c.Id = pc.ClientId
JOIN Products as p ON p.Id = pc.ProductId
WHERE NOT RIGHT(c.Name, 2) = 'KG'
GROUP BY c.Name, NumberVAT
ORDER BY MAX(p.Price) DESC
